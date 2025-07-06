{ pkgs, ... }: {
  # 프로젝트에 필요한 기본 패키지를 정의합니다.
  packages = [
    pkgs.nodejs_20 # 최신 LTS 버전 명시
    pkgs.python311
    pkgs.firebase-tools
  ];
  
  # 개발 환경 내에서 실행될 서비스를 설정합니다.
  services = {
    # Firebase Emulator Suite를 활성화하여 로컬 테스트 환경을 구축합니다.
    firebase-emulator = {
      enable = true;
      # 필요한 에뮬레이터 서비스를 지정합니다.
      functions = true;  # Cloud Functions 에뮬레이터
      firestore = true;  # Firestore 에뮬레이터
      auth = true;       # Auth 에뮬레이터
      storage = true;    # Storage 에뮬레이터
    };
  };
}
