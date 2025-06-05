from app import app

def test_home():
    client = app.test_client()
    response = client.get('/')
    # Исправлен ожидаемый код ответа с 400 на 200
    assert response.status_code == 200
    assert response.data == b'Hello'