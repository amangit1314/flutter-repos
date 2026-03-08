import { PrismaClient } from "@prisma/client";
import { NextFunction, Request, Response } from "express";
import AuthenticatedRequest from "../../interfaces/AuthenticatedRequest";
import { generateAccessToken, generateRefresh } from "../../middlewares";

const bcrypt = require("bcrypt");
const prisma = new PrismaClient();

const uuid = require("uuid");
function generateUUID() {
    return uuid.v4().replace(/-/g, '');
}

const uid = generateUUID();


export const addBook = async (req: Request, res: Response) => {
    // Same code as before

    try {
        // Same code as before

        if (prisma.user) {
            if (prisma.user.role === "seller") {
                // Create a new book based on the request data
                const newBookData: bookCreateInput = {
                    title,
                    author,
                    publisher,
                    sellerId: userId,
                    thumbnail: image,
                    contents: description,
                    price,
                    status: "available",
                };

                const book = await prisma.book.create({
                    data: newBookData,
                });

                res.status(201).json({
                    status: true,
                    data: book,
                    message: "Book added successfully",
                });
            } else {
                res.status(401).json({
                    status: false,
                    data: [],
                    message: "You are not authorized to add a book",
                });
            }
        } else {
            res.status(404).json({
                status: false,
                message: "User not found",
            });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({
            status: false,
            data: [],
            message: "Failed to add book",
        });
    }
};

export const loginUser = async (req: Request, res: Response) => {
    const { email, password } = req.body;

    try {
        const user = await prisma.auth.findUnique({ where: { email } });

        if (!user) {
            return res
                .status(401)
                .json({
                    status: false,
                    data: { message: "Authentication failed. User not found." }
                });
        }

        const isMatch = await bcrypt.compare(password, user.password);

        if (!isMatch) {
            return res
                .status(401)
                .json({
                    status: false,
                    data: { message: "Authentication failed. Wrong password." },
                });
        }

        const accessToken = generateAccessToken(user.uid, email, user.password);
        const refreshToken = generateRefresh(user.uid);

        res.cookie("token", accessToken, { httpOnly: true, maxAge: 3600000 });

        res.status(200).json({
            status: true,
            data: {
                id: user.uid,
                email: user.email,
                username: user.username,
                accessToken,
                refreshToken,
            },
            message: "Authentication successful.",
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal server error." });
    }
};

export const logoutUser = async (req: Request, res: Response) => {
    try {
        res.clearCookie("token");
        res.status(200).json({ message: "User logged out successfully" });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Failed to logout user" });
    }
};

export const getUserById = async (req: Request, res: Response) => {
    const { userId } = req.params;

    try {
        const user = await prisma.user.findUnique({
            where: {
                uid: userId,
            },
        });

        if (!user) {
            res.status(404).json({
                status: false,
                message: "User not found"
            });
        }

        res.status(200).json(user);
    } catch (error) {
        console.error(error);
        res.status(500).json({ status: false, message: "Failed to fetch user" });
    }
};

export const updateUserProfile = async (req: Request, res: Response) => {
    const { profileImage, username, number } = req.body;
    const { userId } = req.params;

    try {
        const updatedUser = await prisma.user.update({
            where: {
                uid: userId,
            },
            data: {
                profileImage: profileImage || undefined,
                username: username || undefined,
                number: number || undefined,
            },
        });

        res.status(200).json(updatedUser);
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Failed to update user profile" });
    }
};   