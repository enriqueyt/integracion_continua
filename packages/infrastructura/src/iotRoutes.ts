// src/routes/iotRoutes.ts
import { Router } from "express";
import { Client } from "@elastic/elasticsearch";
import {
  createDevice,
  listDevices, // TODO: implementar ,etodo para listar devices
  updateDevice, // TODO: implementar ,etodo para listar devices
  deleteDevice, // TODO: implementar ,etodo para listar devices
} from './iotHandlers';

export const createIoTRoutes = (client: Client): Router => {
  const router = Router();

  interface IoTDevice {
    id: string;
    name: string;
    location: string;
    description: string;
  }

  router.post("/create", createDevice(client));
  router.get("/list", listDevices(client)); 
  router.put("/update", updateDevice(client)); 
  router.delete("/delete", deleteDevice(client));

  return router;
};
