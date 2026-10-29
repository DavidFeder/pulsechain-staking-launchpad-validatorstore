# PulseChain Validator Staking Launchpad

**Simple and beautiful tool for ValidatorStore.com customers to stake their validators on PulseChain.**

Built with ❤️ for people who bought validator hardware from ValidatorStore.com.

---

### Latest Release: v1.2.3

- Stake counts stay correct when a beacon lookup fails or is rate-limited. A failed check is no longer treated as ready to deposit.
- Validator status is checked in batches against a healthy beacon, then against recent deposit history, before a deposit button is enabled.
- The summary shows ready, already deposited, and not checked. Unverified stakes stay disabled and can be retried.
- Uploading a file again cancels the previous check, so a late response cannot change the count.
- [Download the latest version →](https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/releases/latest)

---

### Features
- Clean and easy-to-use interface
- Upload your `deposit_data-*.json` file
- Shows which validators are ready, already deposited, or could not be checked
- Status check against a healthy beacon, with recent deposit history included before a stake can be sent
- One-click deposits using your own wallet
- Designed for Internet Money Wallet & MetaMask
- Completely local — your deposit file never leaves your computer

---

### How to Use

#### Windows
1. Download `pulsechain-staking-launchpad-validatorstore-Windows.zip`
2. Extract the zip file
3. Double-click `START.bat`
4. Connect your wallet and upload your deposit file

#### Linux
1. Download `pulsechain-staking-launchpad-validatorstore-Linux.zip`
2. Extract the zip file
3. Open a terminal in the extracted folder and run:
   ```bash
   chmod +x START.sh
   ./START.sh
   ```

#### macOS
1. Download `pulsechain-staking-launchpad-validatorstore-macOS.zip`
2. Extract the zip file
3. Double-click `Start.command`

---

### Requirements
- A modern web browser with an extension wallet
- Internet Money Wallet or MetaMask (tested and supported)
- Python 3 (the launcher will guide you if it's missing)

---

### Docker

You can run the app using Docker:

```bash
docker run -d -p 8080:80 ghcr.io/davidfeder/pulsechain-staking-launchpad-validatorstore:latest
```

Then open **http://localhost:8080** in your browser.

- The container runs nginx and serves the app on port 80 internally. Change the host port (left side of the mapping) if 8080 is already in use on your machine.
- To run a specific version, replace `latest` with the version tag (for example `v1.2.3`).

---

### Security

- Everything runs locally on your computer
- Your deposit file is never sent anywhere
- You always sign transactions in your own wallet

**Always double-check the deposit contract address** in your wallet before confirming:

```
0x3693693693693693693693693693693693693693
```

---

### License

MIT License — you are free to use, modify, and even sell modified versions.

---

**Questions or need hardware?**  
Visit [ValidatorStore.com](https://www.validatorstore.com)

Thank you for supporting ValidatorStore.com and PulseChain!
