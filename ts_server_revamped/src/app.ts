import express from "express";
import * as dotenv from "dotenv";
import { NextFunction, Request, Response } from "express";
import { Console } from "console";
import * as Routes from "../src/routes";
import * as Middleware from './config/middleware/middleware';


dotenv.config();
const app: any = express();
const port = process.env.PORT;
Middleware.configure(app);
Routes.init(app);

app.listen(port, () : void => {
  console.log(`Server running on port ${port}`);
})

