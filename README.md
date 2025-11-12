# 🧪 RobotFramework + Browser library (Playwrite)
Web Automation with Robot framework and Browser (PLaywrite) library based on [Automation Exercise](https://automationexercise.com), using **Robot Framework** and **Browser Library** (based on Playwright).

---

## 🚀 Tecnologias utilizadas
- [Robot Framework](https://robotframework.org/) → Test automation framework.
- [Browser Library](https://marketsquare.github.io/robotframework-browser/) → Library for web automation with Playwright.
- Python 3.8+
- Node.js (required for Playwright/Browser Library).

---

## 📂 Estrutura do projeto
├── tests/ # Test cases (.robot)
├── resources/ # Reusable keywords and variables
├── browser/ # Browser Library settings
├── README.md # This guide
└── requirements.txt # Python dependencies

## ⚙️ Environment Setup

1. Clone the repository Install the dependencies
```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio

2. Install the dependencies
  pip install -r requirements.txt  #Install the framework and the necessary libraries.
  rfbrowser init                   #Download dependencies of the browser library (Chromium, FireFox,WebKit)

## Run all tests
robot tests/

## Run specific tests
robot tests/file_name.robot
