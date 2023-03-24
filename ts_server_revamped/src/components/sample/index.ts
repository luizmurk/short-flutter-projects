import { NextFunction, Request, Response } from "express";

export const newReq =  async function getAll(
    req: any,
    res: Response,
    next: NextFunction
  ): Promise<void> {
    try {
      res.status(200).json({
        status: 201,
        message: "Hello World",
      });
    } catch (error: any) {
      if (error.code === 500) {
        return ;
      }
      res.status(400).json({
        status: 400,
        message: error.message,
      });
    } finally {
      console.log("server worked")
    }
  }