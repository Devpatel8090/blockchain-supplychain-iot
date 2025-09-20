# blockchain-supplychain-iot

# Blockchain Supply Chain with IoT Integration

A permissioned blockchain-based system to enhance **trust, transparency, and traceability** in supply chain management.  
This project integrates **IoT sensor data**, **smart contracts**, and a **web-based dashboard** for manufacturers, distributors, and end-users.

---

## 🚀 Features
- **Blockchain Ledger** (Hyperledger Fabric / Ethereum) for tamper-proof product history  
- **Smart Contracts / Chaincode** for product registration & event tracking  
- **IoT Integration** (simulated sensors with MQTT/HTTP) for automated event logging  
- **Web Dashboard** (React + Tailwind) for product tracking & QR-based verification  
- **API Gateway** (Node.js + Express) for interaction between frontend and blockchain  
- **Off-chain Storage** (MongoDB / IPFS) for sensor metadata & documents  

---

## 🏗️ Architecture
```mermaid
flowchart TD
    A[Manufacturer] -->|Register Product| B[Backend API]
    B -->|Invoke Transactions| C[Blockchain Network]
    D[IoT Sensor] -->|Send Data| B
    C -->|Query History| B -->|REST/JSON| E[Frontend UI]
    E -->|Verify via QR/ID| User[End User]
