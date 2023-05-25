import React, { useEffect, useState } from 'react';
import logo from './logo.svg';
import './App.css';
import IoTForm from './components/IotDevice';
import IoTList from './components/IotList';
import axios from "axios";

function App() {
  const [devices, setDevices] = useState([]);
  const apiUrl = process.env.REACT_APP_API_URL || 'http://0.0.0.0:8081';
  console.log('Api Url');
  console.log(apiUrl);

  const fetchDevices = async () => {
    try {
      const response = await axios.get(`${apiUrl}/api/iot/list`);
      console.log(response);
      setDevices(response.data);
    } catch (error) {
      console.error('Error fetching devices:', error);
    }
  };

  useEffect(() => {
    fetchDevices();
  }, []);
  
  return (
    <div className="App">
      <header className="App-header">
        <p>
          Devices <code></code>
        </p>
        <IoTForm onSave={function (): void {
          throw new Error('Funcion no implementada');
        } } />

        <IoTList devices={devices} onDelete={function (id: string): void {
          throw new Error('Funcion no implementada');
        } } onEdit={function (device: any): void {
          throw new Error('Funcion no implementada');
        } } />
      </header>
    </div>
  );
}

export default App;
