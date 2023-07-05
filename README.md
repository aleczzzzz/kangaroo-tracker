<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About

The aim of this project is to develop a very small front end for a fictitious company to store
information about their pet kangaroos. There will be a few technical requirements that you
need to hit, but otherwise you are free to use your own solutions and approaches
throughout the project.

## Background

The company AussieFarm keeps kangaroos as pets. As part of this, they have approached
Vokke to build a very small web application to help store information about these
kangaroos. It is your job to help build this out for them.

## Installation Guide

This app doesnt use docker but can be added if requested.

- Clone the repository to your projects folder
- Copy .env.example to .env
- Edit .env file input the right credentials(especially DB creds)
- Run composer install
- Run php artisan migrate or if you want to run migration with data php artisan migrate --seed
- Run php artisan key:generate
- Run php artisan serve
- Your app will be accessible in localhost:8000

