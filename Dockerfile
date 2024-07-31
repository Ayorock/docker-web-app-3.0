# Use the official PHP image as a base image
FROM php:7.4-apache

# Update and install required packages
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    libcurl4-openssl-dev \
    libssl-dev \
    pkg-config \
    git

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install PHP extensions
RUN docker-php-ext-install curl

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the working directory
WORKDIR /var/www/html

# Copy the composer.json and composer.lock files
COPY composer.json composer.lock ./

# Install PHP dependencies
RUN composer install --no-scripts --no-autoloader --verbose

# Copy the rest of the application files
COPY . .

# Generate autoload files
RUN composer dump-autoload --optimize

# Set up environment variables
ENV AWS_ACCESS_KEY_ID=your_access_key_id
ENV AWS_SECRET_ACCESS_KEY=your_secret_access_key
ENV AWS_REGION=us-east-1

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
