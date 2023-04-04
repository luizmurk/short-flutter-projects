import { NextFunction, Request, Response } from "express";
import { ICRUDService } from "./interface";
import { dataSample, dataSamples, ICRUDResponse, IMockPostData, otherDataSample } from "./models";


/**
 * @export
 * @implements {CRUDService}
 */

const CRUDService: ICRUDService = {
   async  create(sampleData: IMockPostData): Promise<ICRUDResponse> {
        try{

            return {
                data:sampleData,
                message: "succesfully added",
            } as ICRUDResponse;
        }
        catch{
            throw new Error("Function not implemented.");
        }
    },
    async  read(id: any): Promise<ICRUDResponse> {
        try{
            if(id == 4){
                return {
                    data:dataSample,
                    message: "succesfully added",
                } as ICRUDResponse;
            }else{
                return {
                    data:otherDataSample,
                    message: "succesfully added",
                } as ICRUDResponse;
            }
            
        }
        catch{
            throw new Error("Function not implemented.");
        }
    },
    async  delete(id: string): Promise<ICRUDResponse> {
        try{

            let dataIndex = dataSamples.findIndex((ind)=> {
                console.log(ind.id);
                console.log(id);
                return ind.id == id;
            });
            console.log(dataIndex);
            
            if(dataIndex != -1){
            dataSamples.splice(dataIndex, 1);
            return {
                data:dataSamples,
                message: "succesfully removed data",
            };
        }else{
            return {
                data:dataSamples,
                message: `No data was removed, the data ${id} is not found`,
            };
        }
        }
        catch{
            throw new Error("Function not implemented.");
        }
    },
    async  update(id: string): Promise<ICRUDResponse> {
        try{

            let dataIndex = dataSamples.findIndex((ind)=> {
                console.log(ind.id);
                console.log(id);
                return ind.id == id;
            });
            console.log(dataIndex);
            
            if(dataIndex != -1){
            dataSamples.forEach(element => {
                if(element.id == id){
                    element.card_number = "changed";
                }
                
            });
            return {
                data:dataSamples,
                message: "succesfully updated data",
            };
        }else{
            return {
                data:dataSamples,
                message: `No data was updated, the data ${id} is not found`,
            };
        }
        }
        catch{
            throw new Error("Function not implemented.");
        }
    },
}

export default CRUDService;