async (page) => {
    // Go to the url passed to the command line (see below)
    await page.goto("", { waitUntil: "networkidle" });
    await page.waitForTimeout(3000); // Wait for 3 seconds
    await page.scrollToEnd();
    await page.waitForNetworkIdle(); // Wait for every request to be answered - as a normal user would do
  };