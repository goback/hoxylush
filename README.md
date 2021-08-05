# hoxylush
- 기본 django 로 구현한 hoxylush 를 DRF 로 리펙토링
- Django 기본 User 모델을 상속하여 회원가입 / 로그인 시, 패스워드의 암호화 로직, jwt token 발행 로직을 개선
- 개발 / 배포 서버로 Raspberry Pi 를 사용
- Docker 를 활용하여 NGINX / Django / GUNICORN / MariaDB 의 컨테이너화
- Docker Swarm 을 활용한 분산 서버관리 적용
