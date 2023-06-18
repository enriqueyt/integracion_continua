// src/controllers/iotController.ts
import { Request, Response } from "express";
import { Client } from "@elastic/elasticsearch";

const INDEX_NAME = 'iot_devices';

// Create a device
export const createDevice = (client: Client) => async (req: any, res: Response) => {
    try {
        const { name, location, description } = req.body;
        const result = await client.index({
            index: INDEX_NAME,
            body: {
                name,
                location,
                description,
            },
        });
        res.status(201).json({ message: "Device created", result });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Error creating device" });
    }
};

export const listDevices = (client: Client) => async (req: Request, res: Response) => {
    try {
        const result = await client.search({index: INDEX_NAME});
        //@ts-ignore
        res.status(200).json(result.hits.hits.map((hit: any) => hit._source));
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: "Error listando dispositivos" });
    }
  };  