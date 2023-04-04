export interface IMockPostData {
    id: string,
    user_id: string,
    card_number: string,
    card_name: string,
    card_type?: string,
    expiry_date : string,
    created_date : string | null
}

export const dataSample: IMockPostData  = {
    id: "if345asw",
    user_id: "west_banks",
    card_number: "1234 2346 2563 098",
    card_name: "Kanye North Jr",
    expiry_date: "21-04-2023",
    created_date: "21-04-2021"
}

export const otherDataSample: IMockPostData  = {
    id: "if345asw_other",
    user_id: "west_banks_other",
    card_number: "1234 2346 2563 098",
    card_name: "Kanye North Jr_other",
    expiry_date: "21-04-2023_other",
    created_date: "21-04-2021_other"
}

export const dataSamples: IMockPostData[]  = [
    {
        id: "if345asw",
        user_id: "west_banks",
        card_number: "1234 2346 2563 098",
        card_name: "Kanye North Jr",
        expiry_date: "21-04-2023",
        created_date: "21-04-2021"
    },
    {
        id: "if345asw_other1",
        user_id: "west_banks_other1",
        card_number: "1234 2346 2563 0981",
        card_name: "Kanye North Jr_other1",
        expiry_date: "21-04-2023_othe1r",
        created_date: "21-04-2021_other1"
    },
    {
        id: "if345asw_other",
        user_id: "west_banks_other",
        card_number: "1234 2346 2563 098",
        card_name: "Kanye North Jr_other",
        expiry_date: "21-04-2023_other",
        created_date: "21-04-2021_other"
    }
]



export interface ICRUDResponse {
    data: IMockPostData | IMockPostData[],
    message: string,
}