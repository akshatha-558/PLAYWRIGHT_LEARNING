# Playwright Commands Reference

A quick reference of commonly used Playwright commands, covering CLI usage, test running, locators, actions, assertions, and configuration.

## Installation

```bash
npm init playwright@latest        # Initialize a new Playwright project
npm install -D @playwright/test   # Install Playwright Test as a dev dependency
npx playwright install            # Install browser binaries (Chromium, Firefox, WebKit)
npx playwright install chromium   # Install a specific browser
npx playwright install --with-deps # Install browsers with OS-level dependencies
```

## CLI Commands

```bash
npx playwright test                       # Run all tests
npx playwright test example.spec.ts       # Run a specific test file
npx playwright test -g "login"            # Run tests matching a title/grep pattern
npx playwright test --headed              # Run tests with browser UI visible
npx playwright test --debug               # Run tests in debug mode (Inspector)
npx playwright test --project=chromium    # Run tests for a specific project/browser
npx playwright test --workers=4           # Set number of parallel workers
npx playwright test --retries=2           # Retry failed tests N times
npx playwright test --reporter=html       # Use a specific reporter
npx playwright show-report                # Open the last HTML report
npx playwright codegen                    # Launch codegen tool to record actions
npx playwright codegen https://example.com # Codegen against a starting URL
npx playwright test --ui                  # Open the Playwright UI mode
npx playwright test --update-snapshots    # Update visual snapshot baselines
npx playwright test --trace on            # Force trace recording for all tests
npx playwright show-trace trace.zip       # Open a trace file in the trace viewer
npx playwright --version                  # Show installed Playwright version
```

## Browser & Context Setup

```javascript
const browser = await chromium.launch();        // Launch a browser
const browser = await chromium.launch({ headless: false });
const context = await browser.newContext();      // Create a browsing context
const page = await context.newPage();            // Open a new page/tab
await context.close();                            // Close context
await browser.close();                             // Close browser
```

## Navigation

```javascript
await page.goto('https://example.com');   // Navigate to a URL
await page.goBack();                       // Go back in history
await page.goForward();                    // Go forward in history
await page.reload();                       // Reload the page
```

## Locators

```javascript
page.locator('selector')                  // Generic CSS/XPath locator
page.getByRole('button', { name: 'Submit' }) // Locate by ARIA role
page.getByText('Welcome')                  // Locate by visible text
page.getByLabel('Username')                // Locate by associated label
page.getByPlaceholder('Enter email')       // Locate by placeholder text
page.getByAltText('Logo')                  // Locate by image alt text
page.getByTitle('Close')                   // Locate by title attribute
page.getByTestId('submit-btn')             // Locate by data-testid attribute
locator.first()                            // First matching element
locator.last()                             // Last matching element
locator.nth(2)                             // Nth matching element
locator.filter({ hasText: 'Active' })      // Filter locator results
```

## Actions

```javascript
await page.click('selector');              // Click an element
await locator.click();                      // Click via locator
await page.dblclick('selector');            // Double-click
await page.fill('selector', 'text');        // Fill an input field
await page.type('selector', 'text');        // Type text character by character
await page.press('selector', 'Enter');      // Press a keyboard key
await page.check('selector');               // Check a checkbox/radio
await page.uncheck('selector');             // Uncheck a checkbox
await page.selectOption('selector', 'value'); // Select dropdown option
await page.hover('selector');               // Hover over an element
await page.focus('selector');               // Focus an element
await page.setInputFiles('selector', 'file.pdf'); // Upload a file
await page.dragAndDrop('source', 'target'); // Drag and drop
await page.screenshot({ path: 'shot.png' }); // Take a screenshot
await page.pdf({ path: 'page.pdf' });       // Save page as PDF (Chromium only)
```

## Waiting

```javascript
await page.waitForSelector('selector');     // Wait for element to appear
await page.waitForLoadState('networkidle'); // Wait for network to be idle
await page.waitForURL('**/dashboard');       // Wait for URL to match
await page.waitForTimeout(1000);             // Wait a fixed time (avoid when possible)
await page.waitForResponse('**/api/data');   // Wait for a network response
await page.waitForRequest('**/api/data');    // Wait for a network request
await locator.waitFor({ state: 'visible' }); // Wait for locator state
```

## Assertions (expect)

```javascript
await expect(page).toHaveTitle('Title');         // Page title check
await expect(page).toHaveURL('https://example.com'); // Page URL check
await expect(locator).toBeVisible();              // Element is visible
await expect(locator).toBeHidden();               // Element is hidden
await expect(locator).toBeEnabled();              // Element is enabled
await expect(locator).toBeDisabled();             // Element is disabled
await expect(locator).toBeChecked();              // Checkbox/radio is checked
await expect(locator).toHaveText('Hello');        // Exact text match
await expect(locator).toContainText('ello');      // Partial text match
await expect(locator).toHaveValue('input value'); // Input value check
await expect(locator).toHaveAttribute('href', '/home'); // Attribute check
await expect(locator).toHaveClass('active');      // Class name check
await expect(locator).toHaveCount(3);             // Number of matched elements
await expect(locator).toBeFocused();              // Element has focus
await expect(locator).toBeEmpty();                // Element has no content
```

## Page Information & Evaluation

```javascript
await page.title();                      // Get page title
page.url();                              // Get current URL
await page.content();                    // Get full HTML content
await page.evaluate(() => document.title); // Run JS in page context
await page.$eval('selector', el => el.textContent); // Evaluate on single element
await page.$$eval('selector', els => els.length);   // Evaluate on multiple elements
```

## Dialogs, Frames & Popups

```javascript
page.on('dialog', dialog => dialog.accept()); // Handle alert/confirm/prompt
const frame = page.frame('frameName');         // Access an iframe
const [popup] = await Promise.all([
  page.waitForEvent('popup'),
  page.click('selector'),
]);                                             // Capture a new popup/tab
```

## Network Interception

```javascript
await page.route('**/api/**', route => route.continue()); // Intercept requests
await page.route('**/api/**', route => route.abort());     // Block requests
await page.route('**/api/**', route =>
  route.fulfill({ status: 200, body: 'mocked' })
);                                                            // Mock a response
await page.unroute('**/api/**');                              // Remove a route handler
```

## Test Structure (Playwright Test)

```javascript
import { test, expect } from '@playwright/test';

test.describe('Group name', () => {
  test.beforeAll(async () => { /* setup */ });
  test.beforeEach(async ({ page }) => { /* setup per test */ });

  test('test name', async ({ page }) => {
    // test body
  });

  test.afterEach(async () => { /* cleanup */ });
  test.afterAll(async () => { /* cleanup */ });
});

test.skip('skip this test', async () => {});
test.only('run only this test', async () => {});
test.fixme('mark as broken', async () => {});
```

## Configuration (playwright.config.ts)

```javascript
export default {
  testDir: './tests',
  timeout: 30000,
  retries: 1,
  workers: 4,
  use: {
    headless: true,
    baseURL: 'https://example.com',
    screenshot: 'only-on-failure',
    video: 'retain-on-failure',
    trace: 'on-first-retry',
  },
  projects: [
    { name: 'chromium', use: { browserName: 'chromium' } },
    { name: 'firefox', use: { browserName: 'firefox' } },
    { name: 'webkit', use: { browserName: 'webkit' } },
  ],
};
```

## Notes

- Prefer `getByRole`, `getByLabel`, and `getByTestId` over CSS selectors for more resilient tests.
- Avoid `waitForTimeout` in favor of built-in auto-waiting and explicit wait conditions.
- Use `npx playwright test --ui` for an interactive way to debug and re-run tests.

