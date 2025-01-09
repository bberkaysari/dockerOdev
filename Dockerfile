# Python temel imajını kullanıyoruz
FROM python:3.9-slim

# Çalışma dizinini belirliyoruz
WORKDIR /app

# Gereken dosyaları kopyalıyoruz
COPY requirements.txt /app/requirements.txt
COPY . /app

# Bağımlılıkları kuruyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulamanın 3838 portunda çalışmasını sağlıyoruz
EXPOSE 3800

# Flask uygulamasını başlatıyoruz
CMD ["python", "app.py"]