import { PrismaService } from "src/prisma.service";
import { JwtStrategy } from "./jwt.strategy";

describe('JwtStrategy', () => {
    let prismaService: PrismaService;

    beforeEach(() => {
        prismaService = new PrismaService();
    });

    it('should be defined', () => {
        expect(new JwtStrategy(prismaService)).toBeDefined();
    });
});