//1-Using Codegen recorded the code here and executed the test
//Scenerios: valid invalid username and password


import { test, expect } from '@playwright/test';

test('Invalid Username and Password - Login failed', async ({ page }) => {
    await page.goto('https://app.thetestingacademy.com/playwright/ttacart/');
    await page.locator('[data-test="username"]').click();
    await page.locator('[data-test="username"]').click();
    await page.locator('[data-test="username"]').fill('test123');
    await page.locator('[data-test="password"]').click();
    await page.locator('[data-test="password"]').fill('6878');
    await page.locator('[data-test="login-button"]').click();
});