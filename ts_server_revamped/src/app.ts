import express from "express";
import * as dotenv from "dotenv";
import { NextFunction, Request, Response } from "express";
dotenv.config();
const app: any = express();
const port = process.env.PORT || 5001;

const newReq =  async function getAll(
  req: any,
  res: Response,
  next: NextFunction
): Promise<void> {
  try {
    res.send("hello world");
  } catch (error: any) {
    if (error.code === 500) {
      return ;
    }
    res.status(400);
    res.json({
      status: 400,
      message: error.message,
    });
  }
}

app.get("/api/contacts", newReq);

app.listen(port, () : void => {
  console.log(`Server running on port ${port}`);
})

