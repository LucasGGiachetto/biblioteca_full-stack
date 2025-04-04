-- CreateTable
CREATE TABLE `Aluno` (
    `ra` VARCHAR(10) NOT NULL,
    `nome` VARCHAR(100) NOT NULL,
    `telefone` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`ra`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Livro` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(255) NOT NULL,
    `autor` VARCHAR(100) NOT NULL,
    `prateleira` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Emprestimo` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `raAluno` VARCHAR(10) NOT NULL,
    `livroid` INTEGER NOT NULL,
    `retirada` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `devolucao` DATETIME(3) NULL,
    `multa` DOUBLE NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

ALTER TABLE `Emprestimo` ADD CONSTRAINT `Emprestimo_raAluno_fkey` FOREIGN KEY (`raAluno`) REFERENCES `Aluno`(`ra`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `Emprestimo` ADD CONSTRAINT `Emprestimo_livroid_fkey` FOREIGN KEY (`livroid`) REFERENCES `Livro`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
