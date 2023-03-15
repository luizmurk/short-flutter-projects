import * as dotenv from "dotenv";

dotenv.config();

interface IConfig {
  port: string | number;
  database: {
    FIREBASE_JSON_PATH: string;
  };
  secret: string;
  aws: {
    accessKeyId: string;
    secretAccessKey: string;
  };
  google: {
    GoogleAccessKey: string;
  };
  referral: {
    money: number;
  };
}

const NODE_ENV: string = process.env.NODE_ENV || "development";

const development: IConfig = {
  port: process.env.PORT || 5000,
  database: {
    FIREBASE_JSON_PATH:
      process.env.AUTO_FIREBASE_JSON_PATH || "../../../development.json",
  },
  secret: process.env.AUTO_SECRET || "@QEGTUI",
  aws: {
    accessKeyId: process.env.AWSACCESSKEYID || "AKIAQ54RPL24TKQ5GUNM",
    secretAccessKey:
      process.env.AWSSECRETACCESSKEY ||
      "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",
  },
  google: {
    GoogleAccessKey:
      process.env.GOOGLEACCESSKEY || "AIzaSyClDpIdzMKXbE75kCXSiUX7MYxadFN3FEU",
  },
  referral: {
    money:  10,
  },
};

const production: IConfig = {
  port: process.env.PORT || 5000,
  database: {
    FIREBASE_JSON_PATH:
      process.env.AUTO_FIREBASE_JSON_PATH || "../../../development.json",
  },
  secret: process.env.AUTO_SECRET || "@QEGTUI",
  aws: {
    accessKeyId: process.env.AWSACCESSKEYID || "AKIAQ54RPL24TKQ5GUNM",
    secretAccessKey:
      process.env.AWSSECRETACCESSKEY ||
      "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",
  },
  google: {
    GoogleAccessKey:
      process.env.GOOGLEACCESSKEY || "AIzaSyClDpIdzMKXbE75kCXSiUX7MYxadFN3FEU",
  },
  referral: {
    money:  10,
  },
};

const test: IConfig = {
  port: process.env.PORT || 5000,
  database: {
    FIREBASE_JSON_PATH:
      process.env.AUTO_FIREBASE_JSON_PATH || "../../../development.json",
  },
  secret: process.env.AUTO_SECRET || "@QEGTUI",
  aws: {
    accessKeyId: process.env.AWSACCESSKEYID || "AKIAQ54RPL24TKQ5GUNM",
    secretAccessKey:
      process.env.AWSSECRETACCESSKEY ||
      "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",
  },
  google: {
    GoogleAccessKey:
      process.env.GOOGLEACCESSKEY || "AIzaSyClDpIdzMKXbE75kCXSiUX7MYxadFN3FEU",
  },
  referral: {
    money: 10,
  },
};

const config: {
  [name: string]: IConfig;
} = {
  test,
  development,
  production,
};

export default config[NODE_ENV];
