# Prisma

## 🦄 : Setting Up the Prisma Development Environment

List of commands to set up the application Environment

- Initialization of the package.json file

  `npm init -y`

- Install dependencies for the application

  `npm i prisma typescript ts-node @types/node nodemon --save-dev`

- Initialization of tsconfig.json file

  `touch tsconfig.json`

  ```json
    {
      "compilerOptions": {
        "sourceMap": true,
        "outDir": "dist",
        "strict": true,
        "lib": [
          "esnext"
        ],
        "esModuleInterop": true
    }
  ```

- Initialization of the prisma with postgres support

  `npx prisma init --datasource-provider postgresql`

  ```md
  ✔ Your Prisma schema was created at prisma/schema.prisma
  You can now open it in your favorite editor.
  Don't forget to add `.env` in it to not commit any private information.
  ```

Next steps:

1. Set the DATABASE_URL in the .env file to point to your existing database. If your database has no tables yet, read <https://pris.ly/d/getting-started>
2. Run prisma db pull to turn your database schema into a Prisma schema.
3. Run prisma generate to generate the Prisma Client. You can then start querying your database.
