import gdown

url = 'https://drive.google.com/drive/folders/1xhG0kRH1EX5B9_Iz8gQJb7UNnn_riXi6'
gdown.download_folder(url, quiet=True, use_cookies=False)

