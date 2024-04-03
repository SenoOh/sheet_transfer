# sheet_transfer
## Summary
Download and Upload your files between servers using SSH. 

## Install
1. Clone this repository
```bash
$ git clone git@github.com:SenoOh/sheet_transfer.git
```
2. Copy the `.env.example` file and create `.env` file
```bash
$ cp .env.example .env
```
3. Update `.env` file with your information

## Usage
1. Download file
```bash
$ ./sheet_transfer.sh -d download_file_name
```
2. Upload file
```bash
$ ./sheet_transfer.sh -u upload_file_name
```
3. Help
```bash
$ ./sheet_transfer.sh -h
```