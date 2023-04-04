import { NextFunction, Request, Response } from "express";
import { IMockPostData } from "./models";
import CRUDService from "./sampleService";

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

  export const postReq =  async function post(
    req: Request,
    res: Response,
    next: NextFunction
  ): Promise<void> {
    try {
      const resw = await CRUDService.create(req.body);
      res.status(200).json({
        status: 201,
        body: resw,
        message: "You successfully posted the data",
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

  export const readReq =  async function read(
    req: Request,
    res: Response,
    next: NextFunction
  ): Promise<void> {
    try {
      const resw = await CRUDService.read(req.params.id);
      res.status(200).json({
        status: 201,
        body: resw,
        message: "You successfully read the data",
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

  export const deleteReq =  async function deleteReq(
    req: Request,
    res: Response,
    next: NextFunction
  ): Promise<void> {
    try {
      const resw = await CRUDService.delete(req.params.id.toString());
      res.status(200).json({
        status: 201,
        body: resw,
        message: "You successfully read the data",
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

  export const updateReq =  async function update(
    req: Request,
    res: Response,
    next: NextFunction
  ): Promise<void> {
    try {
      const resw = await CRUDService.update(req.params.id.toString());
      res.status(200).json({
        status: 201,
        body: resw,
        message: "You successfully read the data",
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