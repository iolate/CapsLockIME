CapsLockIME
=====

CapsLock 으로 한영전환을 하기 위한 레지스트리 / AutoHotKey 스크립트입니다.

둘 중에 편하신 방법 하나만 사용하면 됩니다.

1. 레지스트리 수정으로 매핑
---
1. `CapsLock2IME.reg` 를 실행합니다.
2. 재부팅하면 끗

비슷한 방법으로 키를 매핑한 경우 덮어써지니 주의.


2. AutoHotKey 로 매핑 + LED 제어
---

위 레지스트리 방법으로 매핑했을 경우 다시 원래대로 돌린 후 시도.

- `led.ahk` - Keyboard LED 제어
- `CapsLockIME.ahk` - main 프로그램


관련 게시물
---
- [[Win] CapsLock 키로 한영전환하기 - (1) 레지스트리 수정으로 매핑](http://blog.iolate.kr/226)
- [[Win] CapsLock 키로 한영전환하기 - (2) AutoHotKey 를 이용하여 매핑 / LED 제어](http://blog.iolate.kr/227)

