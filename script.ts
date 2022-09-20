import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

async function main() {}

main()
	.catch((r) => {
		console.error(e.message)
	})
	.finally(async () => {
		await prisma.$disconnect()
	})
