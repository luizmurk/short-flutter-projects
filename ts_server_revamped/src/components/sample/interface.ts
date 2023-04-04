import { ICRUDResponse, IMockPostData } from "./models";


export interface ICRUDService {
    create(sampleData: IMockPostData): Promise<ICRUDResponse>;
    read(id: any): Promise<ICRUDResponse>;
    delete(id: any): Promise<ICRUDResponse>;
    update(id: any): Promise<ICRUDResponse>;
}