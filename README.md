# CoinDrive, A DAPP built for file storage and streaming.... 


## User/Set up Guide:  


## Installing MyCrypto Desktop App

[MyCrypto](https://www.mycrypto.com/) is a free, open-source, client-side interface that allows you to interact directly with the blockchain.

Feel free to use MyCrypto Desktop App to manage ethereum wallets and make transactions in the blockchain.

To install MyCrypto Desktop App, please follow the next steps:

1. Open your browser and navigate to the downloads page at https://download.mycrypto.com/.

 ![MyCrypto installation - step 1](screenshots/mycrypto-1.png)

2. Depending on your operating system, you will be redirected to the corresponding application installer. If you are not correctly redirected, choose the appropriate installer for your operating system.

3. Once you download the installer, open the file, and follow the installation wizard. You will start using this application on Day 1.

### MyCrypto Installation Notes

General Notes:

* The first time you execute MyCrypto, you will see the following starting tutorial, I suggest to read trough as you click "Next" to continue.

 ![MyCrypto installation - step 2](screenshots/mycrypto-2.gif)

Running in OS X:

* The first time you execute MyCrypto, you will see the following warning message, you can safely click on the "Open" button to start the application.

 ![OS X Warning](screenshots/mycrypto-mac-wanrning.png)

### Allowing Permission to Open Apps from Unidentified Developers

When an app is not registered with Apple, it can be automatically blocked by the Mac OS operating system when attempting to open the "unidentified" application. Therefore, in order to allow the use of the MyCrypto app, you may need to allow it as an exception to your Mac OS security preferences. To do so perform the following.

1. Open the MyCrypto app, it should produce a warning error saying that you cannot open the application due to security reasons. Therefore, we'll need to make a security exception for it.

2. Look to the top-left of the screen and click on the Apple Logo and navigate to System Preferences > Security & Privacy.

    ![system-preferences](screenshots/system-preferences.png)

3. Click in the General tab and allow your MyCrypto application security access to be opened in the "Allow Apps Downloaded From" section. Your screen should look similar to the image below.

    ![catalina-allow-unidentified-app](screenshots/catalina-allow-unidentified-app.jpg)


## Swith your MyCrypto Account to the Ropsten Network
Go to your MyCrypto App and on the bottom left you will see a "Change Network" button, click here. 
Then Click on the Ropsten (Testnet). On the top left hand side above the networks you will see a "back" botton, click this to return to the main page and make sure that you see a 
green light next to "Connected to the Ropsten Network"

## Register the Wheel and PTC Tokens in your Mycrypto Account
To register our tokens (WHLS & PTC) use the following addresses:

(WHLS-0x76142ad47eE7e58e1856DFcF1A6996D2C27fb53A
PTC-0x67A0DA7D6FB8EC840BB1b62D5B71c3083E051279)

Through the “add custom token” button on the bottom Right of the screen. 

After clicking on the "Add Custom Token" button on the bottom right side of your Mycrypto account a window will appear asking for the Address, Decimals, Token Symbol and Balance. 

Put the above addresses in one at a time, and the rest should prepopulate, Sometime the save button will not light up as it should, in this case put 0 into the Decimals line. Then hit "Save"
Follow these instructions for both token and then you should see that you now have the capability to Send/Recieve our tokens. 

## Buy PTC Tokens by using the "Buy Tokens" Button on our Main page. 

## Click on the upload button and choose your copyright option. 

## In your on-site dashboard you should now see a link to your file that can be used to download, share or stream your file. 

## In your Mycrypto account you should now see the WHLS token in your account.



## Join the CoinDrive Mining Movement Instructions:

## Installing Go Ethereum Tools

[Go Ethereum](https://geth.ethereum.org/) is one of the three original implementations of the Ethereum protocol. It is written in Go, fully open-source and licensed under the GNU LGPL v3.

I will use Go Ethereum Tools to create my own blockchain, from the genesis block to mining tokens and making transactions.

Despite there are installers for OS X and Windows, I will use the application executable binary files to have a seamless experience between both operating systems and avoid some technical issues that currently exist in Windows.

To install the Go Ethereum Tools, please follow the next steps:

1. Open your browser and navigate to the Go Ethereum Tools download page at https://geth.ethereum.org/downloads/

2. Scroll down to the "Stable Releases" section and proceed depending on your operating system.

 2.1. Installing in OS X.
 Click on the **"Geth & Tools 1.9.7"** to download the applications bundle archive.
 ![Installing Geth - 1](screenshots/geth-1.gif)

 2.2. Installing in Windows.
 ![Installing Geth - 2](screenshots/geth-2.gif)
 You need to know if you are running a `32 bit` or `64 bit` version of Microsoft Windows, if you are not sure about that, you can check your version following [these steps](https://support.microsoft.com/en-us/help/13443/windows-which-version-am-i-running).

 Depending on your Windows version, you should download the `32 bit` or `64 bit` version of the Go Ethereum Tools.

3. After downloading the tools archive, open your "Downloads" folder, and you will find a file named `geth-alltools-darwin-amd64-1.9.7-a718daa6.tar.gz` in OS X, and a file called `geth-alltools-windows-amd64-1.9.7-a718daa6.zip` in Windows. Note that the last numbers in the filename could vary depending on the last built available.

4. Decompress the archive in the location of your preference in your computer's hard drive, and rename the containing folder as `Blockchain-Tools`. I recommend using a location that can be easily accessed from the terminal window like the user's home directory.

 ![Installing Geth - 3](screenshots/geth-3.png)

 ### Let's Start it. 

1. Open your Terminal and navidate to a folder `Blockchain-Tools`. Switch from base to ethereum environment (`conda activate ethereum`). 


????. Now the nodes can be used to begin mining blocks.

   

    * **NOTE:** Type your password and hit enter - even if you can't see it visually or trying adding --password pw.txt and saving an actual passwrod in txt file in the `Blockchain-Tools` folder. 
    * **NOTE:** Add --syncmode full and/or --minerthreads  if your are having trouble with nodes mining. 

5. Now your CoinDrive blockchain Node should now be running and Mining new blocks!

6. With your node up and running, the blockchain can be added to MyCrypto for testing.

    * Open the MyCrypto app on your desktop, then click `Change Network` at the bottom left:

    ![change network](screenshots/change-network.png)

    * Click "Add Custom Node", then add the custom network information.

    * Make sure that you scroll down to choose `Custom` in the "Network" column to reveal more options like `Chain ID`. In my case, my chain id was 321:

    ![custom network](screenshots/custom-network.png)

    * Type `ETH` in the Currency box.
    
    * In the Chain ID box, type the 321(or the one given).

    * In the URL box type: `http://127.0.0.1:8545`.  This points to the default RPC port on your local machine.(Change this)

    * Finally, click `Save & Use Custom Node`. 

7. After connecting to the custom network in MyCrypto, it can be tested by sending money between accounts.

    * Select the `View & Send` option from the left menu pane, then click `Keystore file`.

    ![select_keystore_file](screenshots/select_keystore_file.png)

    * On the next screen, click `Select Wallet File`, then navigate to the keystore directory inside your Node directory, select the file located there, provide your password when prompted and then click `Unlock`.

    * This will open your account wallet inside MyCrypto. 
     

    ![keystore_unlock](screenshots/keystore_unlock.gif)

    * In the `To Address` box, type an account address that you own so you can verify a transaction , then fill in an arbitrary amount of ETH:

     ![transaction send](screenshots/transaction-send.png)

    * Confirm the transaction by clicking "Send Transaction", and the "Send" button in the pop-up window.  

    ![Send transaction](screenshots/send-transaction.gif)

    * Click the `Check TX Status` when the green message pops up, confirm the logout:

    ![check tx](screenshots/check-tx-status.png)

    * You should see the transaction go from `Pending` to `Successful` in around the same blocktime you set in the genesis.

    * You can click the `Check TX Status` button to update the status.

    ![successful transaction](screenshots/transaction-status.png)


# Blockchain Terminology Guide

This guide serves as an overview for the various concepts required to understand the fundamentals of blockchain networks.

## Terminologies

* What is a blockchain?

  **Answer:** A blockchain is a network of nodes or machines linked in a peer-to-peer fashion that facilitates transactions in a verifiable and permanent way. A blockchain network is also often called an open distributed ledger.

* What is a blockchain node?

  **Answer:** A node is a single machine that contributes to the infrastructure of a blockchain network. Blockchains networks as a whole are composed of multiple nodes that are interconnected with each other and therefore exchange the latest blockchain data with each other so that each node is up-to-date with the latest verified transactions on the blockchain network.

* What is blockchain mining?

  **Answer:** Blockchain mining is the process of adding verified transaction records to the current blockchain data; miners act as separate nodes that are paid a fee to verify blockchain transactions and do so by solving intense computations to finalize transactions.

* What is a blockchain wallet?

  **Answer:** A blockchain wallet is a digital wallet containing a public and private key that is used to not only store cryptocurrencies, but also conduct secure transactions amongst other users via wallet addresses (hashed version of a public key). It is imperative that the private key for a digital wallet be kept safe, as losing it will be prevent a user from accessing their funds (no other way for decryption).

* What is Ethereum?

  **Answer:** Ethereum is an open software platform based on blockchain technology that enables developers to build and deploy decentralized applications.

* What is a hash?

  **Answer:** A hash value is a product of a function that converts an input of letters and numbers into an encrypted output of a fixed length. Hashing is one way to enable security during message transmission when the message is intended for a particular recipient only, ensuring that the message has not been tampered with, as doing so would generate a new hash value different from the originating hash value.

* What is a digital signature?

  **Answer:** A digital signature is a numerical value that is represented as a sequence of characters and is the product of ensuring the contents of a message have not been altered in transit (integrity), that the message was indeed sent by the sender (authentication), and that the sender cannot deny having sent the message (non-repudiation).

* What is encryption?

  **Answer:** Encryption is the process in which a message is encoded in a format that cannot be read or understood by an external party lacking the necessary credentials.

* What is symmetric encryption?

  **Answer:** Symmetric encryption is the simplest type of encryption that uses only a single key (a private/secret key) to both encrypt and decrypt information. As a result, the parties communicating via symmetric encryption must exchange the secret key so that it can be used in the decryption process, which is a security disadvantage compared to asymmetric encryption.

* What is an asymmetric key?

  **Answer:** Asymmetric encryption uses a key pair: a public and private key. As the name suggests, the public key is made freely available to anyone on the Internet while the private key is kept a secret by the end-user. Therefore, messages that are encrypted using the public key can only be decrypted using the associated private key, and messages that are encrypted using the private key can only be decrypted using the associated public key.

* What are the advantages vs. disadvantages of both types of encryption techniques?

  **Answer:** Symmetric encryption is the oldest and best-known technique for encryption; however, because of its use of only a single key (the private/secret key), there is the potential for a breach in security when exchanging the private key between two parties, especially over a vast network such as the Internet with possible eavesdroppers. In contrast, due to the use of a key pair in asymmetric encryption (public and private key), the private key is never exchanged and therefore is kept a secret at all times. Though as a result of the use of a key pair, asymmetric encryption is slower than symmetric encryption due to the increased processing power used to encrypt and decrypt messages.

* What is a consensus algorithm?

  **Answer:** A consensus algorithm is a protocol used to verify the validity of transactions on a blockchain network. Due to the decentralized nature of the blockchain network, there is no central authority and therefore nodes within the blockchain network must be able to verify such transactions with certainty.

* What is proof of authority?

  **Answer:** Proof of Authority (PoA) is a reputation-based consensus algorithm in which the model relies on a limited number of block validators that act as moderators to verify the newest blocks and transactions.

* What is proof of work?

  **Answer:** Proof of Work (PoW) is an asset-based consensus algorithm in which the model relies on producing a piece of data which is both resource (computation) and time intensive, but allows for others to verify the validity of the transaction. This consensus algorithm directly relates to the blockchain mining concept in which miners solve intense computations to finalize transactions.

* What is proof of stake?

  **Answer:** Proof of Stake (PoS) is an collateral-based consensus algorithm in which the model relies on transactional validators whom are selected based on the amount of Bitcoin or Ether they hold. When they validate transactions, they put up a stake of their own Bitcoin or Ether and are rewarded (proportional to their stake) when a new block or transaction is added to the blockchain.


## Helpful Links

<details><summary>Blockchain</summary>

* https://www.investopedia.com/terms/b/blockchain.asp
</details>

<details><summary>Nodes</summary>

* https://medium.com/coinmonks/blockchain-what-is-a-node-or-masternode-and-what-does-it-do-4d9a4200938f
</details>
<details><summary>Blockchain Wallets</summary>

* https://www.investopedia.com/terms/b/blockchain-wallet.asp

* https://blog.unocoin.com/what-happens-if-you-forget-your-bitcoin-wallet-keys-bbf563ce281a
</details>
<details><summary>Digital Signature</summary>

* https://www.instantssl.com/digital-signature

* https://medium.com/@xragrawal/digital-signature-from-blockchain-context-cedcd563eee5
</details>
<details><summary>Hash</summary>

* https://www.investopedia.com/terms/h/hash.asp
</details>
<details><summary>Blockchain Mining</summary>

* https://www.bitcoinmining.com/
</details>
<details><summary>Consensus Algorithms</summary>

* https://www.binance.vision/blockchain/what-is-a-blockchain-consensus-algorithm
</details>
<details><summary>Proof of Authority</summary>

* https://www.binance.vision/blockchain/proof-of-authority-explained
</details>
<details><summary>Proof of Work</summary>

* https://en.bitcoin.it/wiki/Proof_of_work
</details>
<details><summary>Proof of Stake</summary>

* https://www.investopedia.com/terms/p/proof-stake-pos.asp
</details>





























# Resources 
https://www.pubnub.com/blog/angularjs-chat-oauth-user-authentication/
https://medium.com/compound-finance/compound-ethereum-api-with-infura-1f5c555fd4a2
https://www.youtube.com/watch?v=owarCZwp0jc
https://unstoppabledomains.com/
https://youtu.be/T9p3ZVUw3X8 
https://www.google.com/amp/s/www.geeksforgeeks.org/how-to-use-sys-argv-in-python/amp/
https://daotalk.org/t/proposals-building-a-dwebsite-for-dxdao-s-alchemy/1342


###### Nota Bene: much of this material comes from class GitLab, Instructors GS, AN, and KS, and Tutor, Ms. LT
