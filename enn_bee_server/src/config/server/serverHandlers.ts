import * as debug_holder from "debug";
import { Address } from "cluster";
const debug = debug_holder("server");

export function onError(
  error: NodeJS.ErrnoException,
  port: number | string | boolean
): void {
  if (error.syscall !== "listen") {
    throw error;
  }

  const bind: string =
    typeof port === "string" ? `Pipe ${port}` : `Port ${port}`;

  switch (error.code) {
    case "EACCES":
      console.error(`${bind} requires elevated privileges`);
      process.exit(1);
      break;
    case "EADDRINUSE":
      console.error(`${bind} is already in use`);
      process.exit(1);
      break;
    default:
      throw error;
  }
}

export function onListening(): void {
  const addr: Address = this.address();
  const bind: string =
    typeof addr === "string" ? `pipe ${addr}` : `port ${addr.port}`;

  debug(`Listening on ${bind}`);
}
