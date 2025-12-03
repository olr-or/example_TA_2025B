# Quiz 1
run() 함수에서는 Alice/Bob만 실습을 진행한다.
이를 자동화하여 모든 학생이 모든 과제를 자동으로 시도하도록 하려면 어떤 루프 구조를 넣어야 하는가?
실제 실행 코드는 작성할 필요 없으며, pseudocode 형태로 작성하라.

# Quiz 2
CyberLab 로그에서 다음 패턴을 찾는 알고리즘을 설계하라:
어떤 UID가 과제 제출 시도가 3회 이상 실패한 뒤 다음 시도에서 성공했을 때, 이를 탐지하여 “RECOVERY EVENT”로 분류하는 조건을 설명하라.

함수로 만들 필요는 없고, data_store['logs']를 어떻게 순회해야 하는지 알고리즘 흐름만 설명하면 ok

# Quiz 3
다음 조건을 만족하는 난이도 자동조정 알고리즘을 설계하라:
* 학생 score가 200 이상이면 새롭게 생성되는 과제의 difficulty를 +1 증가
* 학생 score가 50 미만이면 difficulty를 –1 감소, 
* 최소 difficulty=1, 최대 difficulty=3

SecurityTask 객체를 수정할 필요는 없지만, CyberLab이 create_task 할 때 어떤 추가 로직을 넣어야 하는지 설계만 제시하라.

# Quiz 4
CyberLab에서 학생을 영구 삭제하는 기능을 구현하라.

다음 조건을 만족해야 한다:
* 함수 이름: remove_user(self, uid)
* 해당 학생을 data_store["users"]에서 제거
* 해당 uid를 포함한 로그 또한 삭제
* 삭제 성공 시 True, 실패 시 False

# Quiz 5
과제 steps 리스트를 자동 생성하는 도구를 작성하라.
* 입력 문자열을 "-" 기준으로 분해
* 각 토큰을 trim하여 steps 리스트로 반환

<Example>
input: "scan - port22 - analyze - report"
output: ["scan", "port22", "analyze", "report"]

# Quiz 6 
학생이 수행한 과제들의 base_score 평균을 계산하여 다음 조건을 기반으로 숙련도 레벨(skill_level)을 판정하고 반환하는 함수를 작성하라:
* 평균 < 15 → "Beginner"
* 평균 15~30 → "Intermediate"
* 평균 > 30 → "Advanced"
