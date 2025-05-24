CREATE TABLE `users`(
    `id` int(255)NOT NULL,
    `emri` varchar(255)NOT NULL,
    `username` varchar(255)NOT NULL,
    `email` varchar(255)NOT NULL,
    `password` varchar(255)NOT NULL,
    `confirm_password` varchar(255)NOT NULL,
    `is_admin` varchar(255)NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `stocks` (
    `id` INT(255) NOT NULL,
    `symbol` VARCHAR(10) NOT NULL,
    `name` VARCHAR(255),
    `sector` VARCHAR(100),
    `currency` VARCHAR(10),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `stock_prices` (
    `id` INT(255) NOT NULL,
    `stock_id` INT NOT NULL,
    `price` DECIMAL(10,2),
    `volume` BIGINT,
    `change_percent` DECIMAL(5,2),
    `date` DATETIME,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`stock_id`) REFERENCES `stocks`(`id`) ON DELETE CASCADE
);

CREATE TABLE `portfolios` (
    `id` INT(255) NOT NULL,
    `user_id` INT(255) NOT NULL,
    `stock_id` INT(255) NOT NULL,
    `quantity` DECIMAL(10,2),
    `average_price` DECIMAL(10,2),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`stock_id`) REFERENCES `stocks`(`id`)
);

CREATE TABLE `transactions` (
    `id` INT(255) NOT NULL,
    `user_id` INT(255) NOT NULL,
    `stock_id` INT(255) NOT NULL,
    `type` ENUM('BUY', 'SELL'),
    `quantity` DECIMAL(10,2),
    `price` DECIMAL(10,2),
    `transaction_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`stock_id`) REFERENCES `stocks`(`id`)
);

ALTER TABLE `users`
    ADD PRIMARY KEY (`id`);
    
ALTER TABLE `stocks`
    ADD PRIMARY KEY (`id`);



ALTER TABLE `portfolios`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `transactions`
    ADD PRIMARY KEY (`id`);








ALTER TABLE `users`
    MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

    
ALTER TABLE `stocks`
    MODIFY `id` INT(255) NOT NULL AUTO_INCREMENT;


ALTER TABLE `stock_prices`
    MODIFY `id` INT(255) NOT NULL AUTO_INCREMENT;

ALTER TABLE `portfolios`
    MODIFY `id` INT(255) NOT NULL AUTO_INCREMENT;

ALTER TABLE `watchlists`
    MODIFY `id` INT(255) NOT NULL AUTO_INCREMENT;

