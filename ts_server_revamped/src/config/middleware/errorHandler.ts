

export const erroHandler = function  
    (
    err: any, 
    req: any, 
    res: any, 
    next: any
    ): void
    {
        const statusCode = res.statusCode ? res.statusCode : 500;
        res.json({
            message: err.message,
            stackTrace: err.stack
        })
    
    

    }