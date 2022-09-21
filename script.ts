import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient({ log: ['query'] })

async function main() {
	// await prisma.user.deleteMany()
	const user = await prisma.user.createMany({
		data: [
			{
				name: 'imskanand',
				email: 'imskanand@gmail.com',
				age: 21,
			},
			{
				name: 'satyam',
				email: 'imsjanand@gmail.com',
				age: 17,
			},
		],
	})
	console.log(user)
}

main()
	.catch((e) => {
		console.error(e.message)
	})
	.finally(async () => {
		await prisma.$disconnect()
	})
