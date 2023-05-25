import express, { Application, Request, Response } from 'express';
import { Client } from '@elastic/elasticsearch';
import { createIoTRoutes } from './iotRoutes';
const cors = require('cors');
import bodyParser from "body-parser";

const ELASTICSEARCH_HOST = process.env.ELASTICSEARCH_HOST || 'localhost';
const ELASTICSEARCH_PORT =  process.env.ELASTICSEARCH_PORT || '9200';
console.log(`Elasticsearch: http://${ELASTICSEARCH_HOST}:${ELASTICSEARCH_PORT}`);
const esClient = new Client({
    node: `http://${ELASTICSEARCH_HOST}:${ELASTICSEARCH_PORT}`,
  });

esClient.ping().then(() => {
    console.log('Elasticsearch esta conectado correctamente');
}, (error: Error) => {
    console.error('Error!', error);
});

const app: Application = express();
const PORT: number = Number(process.env.PORT) || 8081;
app.use(cors());
app.use(bodyParser.json());

app.get('/', (req: Request, res: Response) => {
    res.send('Hola mundo con Elastic!');
});

app.use('/api/iot', createIoTRoutes(esClient));
  
app.listen(PORT, () => {
    console.log(`Servidor web: http://localhost:${PORT}`);
});