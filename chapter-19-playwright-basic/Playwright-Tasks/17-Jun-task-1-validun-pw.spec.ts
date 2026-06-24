//1-Using Codegen recorded the code here and executed the test
//Scenerios: validate user valid username and password and able to fetch the site after login and able to add to cart and remove



import { test, expect } from '@playwright/test';

test('Valid Username and Password and Add to Cart and Remove- Login pass', async ({ page }) => {
    await page.goto('https://app.thetestingacademy.com/playwright/ttacart/');
    await page.locator('[data-test="username"]').click();
    await page.locator('[data-test="username"]').fill('standard_user');
    await page.locator('[data-test="password"]').click();
    await page.locator('[data-test="password"]').fill('tta_secret');
    await page.locator('[data-test="login-button"]').click();
    await page.locator('[data-test="add-to-cart-test-allthethings-tshirt-red"]').click();
    await page.locator('[data-test="remove-test-allthethings-tshirt-red"]').click();
});