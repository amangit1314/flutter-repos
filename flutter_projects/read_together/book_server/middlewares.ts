import { NextFunction, Request, Response } from 'express';
import ErrorResponse from './interfaces/ErrorResponse';
const jwt = require("jsonwebtoken");
const asyncHandler = require("express-async-handler");
const dotenv = require("dotenv");
dotenv.config();

export function notFound(req: Request, res: Response, next: NextFunction): void {
    res.status(404);
    const error = new Error(`🔍 - Not Found - ${req.originalUrl}`);
    next(error);
}

export function errorHandler(err: Error, req: Request, res: Response<ErrorResponse>, next: NextFunction) {
    const statusCode = res.statusCode !== 200 ? res.statusCode : 500;
    res.status(statusCode);
    res.json({
        message: err.message,
        stack: process.env.NODE_ENV === 'production' ? '🥞' : err.stack,
    });
}

export const generateAccessToken = (uid: string, email: string, hashedPassword: string) => {
    const token = jwt.sign(
        { uid: uid, email: email, password: hashedPassword },
        process.env.ACCESS_TOKEN_SECRET,
        { expiresIn: process.env.ACCESS_TOKEN_EXPIRATION }
    );
    return token;
};

export const generateRefresh = (uid: string) => {
    return jwt.sign({ uid }, process.env.REFRESH_TOKEN_SECRET, {
        expiresIn: process.env.REFRESH_TOKEN_EXPIRATION,
  });
}

export const validateAccessToken = asyncHandler((req: any, res: any, next: any) => {
    const authHeader = req.headers.authorization || req.headers.Authorization;
    if (authHeader && authHeader.startsWith("Bearer")) {
        const token = authHeader.split(" ")[1];
        try {
            console.log(token);
            const decoded = jwt.verify(token, process.env.ACCESS_TOKEN_SECRET);
            req.user = decoded.user;
            next();
        } catch (err) {
            console.log(token);
            res.status(401).send({
                status: false,
                error: Error("User is not authorized"),
                message: "User is not authorized"
            });
        }
    } else {
        res.status(500).send({
            status: false,
            error: Error("Access denied. User is not authorized or token is missing"),
            message: "Access denied. User is not authorized or token is missing"
        });
    }
});

export const validateRefreshToken = asyncHandler(async (req: any, res: any, next: any) => {
    const refreshToken = req.headers.refresh_token; // Assuming the refresh token is sent in the headers as "refresh_token"

    if (!refreshToken) {
        res.status(401).send({
            status: false,
            error: Error("Refresh token not provided"),
            message: "Refresh token not provided"
        });
        return;
    }

    try {
        const uid = await validateAccessToken(refreshToken);
        req.user = { uid }; // Assuming you need the user ID in subsequent middleware/handlers
        next();
    } catch (error) {
        res.status(401).send({
            status: false,
            error: Error("Invalid refresh token"),
            message: "Invalid refresh token"
        });
    }
});

// Assuming you have the `asyncHandler` implemented to handle asynchronous functions

