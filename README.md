# 一鍵超前部署
[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

# 自己把玩，多了一分樂趣

1. 抓下源碼
    ```
    git clone git@github.com:kynwu/golang-forms.git
    ```

2. 添加客製化程式碼片段，或選擇保持原樣

3. 建立 Docker 映像檔
    ```
    gcloud builds submit --tag gcr.io/<PROJECT-ID>/golang-forms
    ```
    PROJECT ID 可透過 ```gcloud config get-value project``` 取得
4. 部署至Cloud Run
    ```
    gcloud run deploy --image gcr.io/<PROJECT-ID>/golang-forms --platform managed
    ```
5. 通過在Web瀏覽器中打開服務URL來訪問已部署的容器