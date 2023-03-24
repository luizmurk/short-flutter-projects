import express from "express";
import * as dotenv from "dotenv";
import { NextFunction, Request, Response } from "express";
import { Console } from "console";
import * as Routes from "../src/routes";


dotenv.config();
const app: any = express();
const port = process.env.PORT || 5001;
Routes.init(app);

app.listen(port, () : void => {
  console.log(`Server running on port ${port}`);
})

