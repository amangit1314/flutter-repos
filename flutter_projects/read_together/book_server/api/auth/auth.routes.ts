import express from 'express';
import { validateAccessToken, validateRefreshToken } from "../../middlewares";
import { getUserById, loginUser, logoutUser, registerUser, updateUserProfile } from "./auth.controller";
const userRouter = express.Router();

userRouter.get("/users/profile:id", validateAccessToken, getUserById);

userRouter.post("/users/login", loginUser);
userRouter.post("/users/register", registerUser);
userRouter.post("/users/logout", logoutUser);
userRouter.post("/users/profile:id", validateAccessToken, updateUserProfile);

export default userRouter;
