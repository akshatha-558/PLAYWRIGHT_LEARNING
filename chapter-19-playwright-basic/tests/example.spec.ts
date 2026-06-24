import { test, expect } from '@playwright/test'

test("verify the title for TTACART", async ({ page }) => {
  await page.goto(' https://app.thetestingacademy.com/playwright/ttacart');
});