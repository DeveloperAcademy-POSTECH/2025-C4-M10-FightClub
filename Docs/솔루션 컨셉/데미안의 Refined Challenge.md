
## 1. 육하원칙에 의거 솔루션 컨셉 구체화

- who - 부모와 함께 동화책을 읽는 만 3세 ~ 7세의 어린이
  
- what - 동화책을 읽는 동안 물리적 인터렉션 디바이스와 홈 자동화를 연동해 몰입감이 있는 경험 제공
  
- when - 동화책의 한 장면이 끝나고, 사용자 음성 또는 동작 입력이 들어올 때마다 다음 장면으로 전환
  
- where - 가정의 아이 방, 거실, 또는 홈키트가 설치된 실내 공간
  
- why - 단순한 듣기/보기 방식의 독서를 넘어, 오감 자극 및 몰입형 스토리텔링 경험을 제공하여 독서습관을 보다 재밌게 확립시키려함.
  
- how - HomePod을 통해 음성 인식, 조명/사운드 제어 + 물리 디바이스( 큐브, 버튼, 패브릭 등 )를 통한 상호작용 이벤트 감지로 구현.

Refined Challenge
"만 3~ 7세 어린이와 부모가 동화책을 읽을 때, 오감 인터렉션과 홈 자동화를 결합해 책 속 주인공이 되는 몰입형 독서 경험을 제공하고자 한다."

App Statement ( Mission/Value )
" 책을 읽는 순간, 우리 집이 동화 속 세상으로 바뀐다. - 아이와 부모가 함께 오감으로 몰입하는 새로운 스토리텔링 경험 "
## 2. 솔루션 컨셉을 이루기 위해 필요한 기술적 조사

1) HomeKit 연동 장치 선정 및 구성
[조명(무드등)]
- Philips Hue, Nanoleaf, Eve Light Strip, IKEA TRÅDFRI

- HomeKit 공식 지원: Philips Hue, Nanoleaf(컬러 제어 탁월)

[사운드 출력 기기]

- HomePod, HomePod mini, 외부 스피커(미지원)

- HomeKit/Siri 공식 지원: HomePod, HomePod mini

[물리 인터랙션 디바이스]

- Aqara Cube, Eve Button, NFC Tag, Flic 버튼

- HomeKit 공식 지원: Aqara Cube, Eve Button

- Flic: Shortcut 연동, NFC: iOS 앱 필요


[음성 입력 장치]

- HomePod 내장 Siri, iPhone/iPad 내장 마이크

- 추천: HomePod(최적화된 SiriKit), iPhone/iPad(앱 기반)

  

[책의 형태]

- 실제 동화책 vs 디지털 eBook(iPad 앱)

- 추천: 실제 동화책(오감 몰입 높음), eBook(자체 앱 시나리오 가능)

2) HomeKit 활용 방식 결정

| **기능**               | **필요한 Apple Framework/Kit 및 기술**                               | **설명**                                                 |
| -------------------- | -------------------------------------------------------------- | ------------------------------------------------------ |
| **음성 자연어 입력 처리**     | SiriKit, Speech Framework, Speech Recognition API, App Intents | HomePod 활용 시 SiriKit 기반, 세부 커스텀 시 iOS App Speech API   |
| **음성 인식 후 액션 처리**    | Shortcuts API, HomeKit Framework                               | 음성 입력 후 HomeKit Scene 자동화 트리거링                         |
| **음성/효과음 출력**        | AVFoundation, AVKit, HomePod 내장 기능                             | HomePod 기본 음성출력 + 효과음 커스텀 구성 가능                        |
| **HomeKit 장치 상태 관리** | HomeKit Framework (HMHome, HMAccessory)                        | HomeKit 기반 장치 상태 실시간 모니터링 및 Scene 제어                   |
| **인터랙션 디바이스 입력**     | HomeKit 액세서리 프로토콜(HAP), 또는 BLE(NFC) 처리                         | Aqara, Eve는 HAP, NFC 등 추가 디바이스는 CoreNFC, CoreBluetooth |


## 3. 홈킷 스터디플랜 각자 짜오기

| **주차**  | **주제 (목표)**                  | **실습 과제**                                                                             |
| ------- | ---------------------------- | ------------------------------------------------------------------------------------- |
| **1주차** | **HomeKit & Home 앱 기초**      | - Home 앱에서 조명, 사운드 Scene 생성 및 자동화- Siri Shortcut으로 조명과 음성 트리거링                        |
| **2주차** | **음성인식과 SiriKit**            | - “다음 페이지” 음성 명령으로 HomeKit 자동화 Scene 트리거링- Speech Framework로 간단한 음성입력 받아 처리           |
| **3주차** | **물리 인터랙션 (Cube/Button)**    | - Aqara Cube/Eve 버튼 HomeKit 연동- 물리 인터랙션 트리거로 조명과 소리 Scene 자동화                         |
| **4주차** | **iOS 자체 앱과 HomeKit API 연동** | - 앱에서 HomeKit 장치 상태 조회/변경 실습 (HMHome, HMAccessory)- iOS 앱에서 음성명령 커스텀 처리 및 동화책 시나리오 관리 |

[[뎀의 리서치]]