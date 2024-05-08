# Study Diary [Swift Mini Project 03]
> 네비게이션 탭을 이용해여, '스터디원 리스트 페이지'과 '달력 페이지'으로 구분하여 스터디원과 스터디 일정을 관리하는 앱.
> 스터디원 리스트에는 상세 내용 페이지와, 스터디원 추가 페이지로 구성, 달력 페이지는 일정 추가 페이지와 일정 리스트 페이지로 구성.
> 
> 구현 해 본 기능
> - tableView를 사용하여 데이터 추가 기능
> - calenderUI를 사용하여 일정 추가 기능


<img src="https://github.com/dorami4477/StudyDiary/assets/85213387/3721c1e0-5052-4de9-b2f0-a965b16b07d3" width="30%" title="스터디원 리스트" alt="student list"></img>
<img src="https://github.com/dorami4477/StudyDiary/assets/85213387/934beab2-23bd-4cd1-9af1-caedfed0707b" width="30%" title="스터디원 상세내용" alt="student info"></img>
<img src="https://github.com/dorami4477/StudyDiary/assets/85213387/e9c1b180-368a-41f7-b001-6b22fb27f551" width="30%" title="스터디원 추가" alt="add student"></img>

## 메인화면 1 요구사항

1. 본인을 제외한 스터디 인원들의 프로필을 이미지처럼 화면에 나열해주세요.
2. 프로필을 클릭하게 되면 해당 인원의 프로필 정보를 화면에 보이게 해주세요. (프로필 정보를 보여줄 화면의 양식은 메인화면 1-1과 같으며 아래의 이미지를 참고)
3. 왼쪽 상단에 빨간색 상자(1)로 표시된 버튼을 누르면 메인화면 1-1로 이동합니다.
4. 오른쪽 상단에 빨간색 상자(2)로 표시된 버튼을 누르면 메인화면 1-2로 이동합니다.




## 메인화면 1-1 요구사항

1. 본인의 프로필 정보를 화면에 보여줍니다.
2. 위의 이미지에 보여지는 프로필 정보는 노션의 자기소개 페이지를 참고했습니다.
3. 왼쪽 상단에 뒤로가기 버튼을 누르면 메인화면 1로 돌아갑니다.





## 메인화면 1-2 요구사항

1. 프로필 정보에 필요한 양식에 맞게 입력값을 받는 화면을 만들어주세요.
2. 하단에 추가하기 버튼을 누르면 입력값을 모두 입력 했는지 검사하고 입력하지 않은 부분이 있다면 버튼위에 “필요한 정보를 모두 입력해주세요.” 라는 내용의 경고를 표시합니다.
3. 필요한 정보를 모두 입력 했다면 메인화면 1에 있는 프로필들중 가장 하단에 프로필이 추가 됩니다.


<img src="https://github.com/dorami4477/StudyDiary/assets/85213387/665898fb-72a4-4ea2-945e-400b2d4443ae" width="30%" title="일정 리스트" alt="plan list"></img>
<img src="https://github.com/dorami4477/StudyDiary/assets/85213387/d130d284-82df-43b4-9c44-1f0729b20f7b" width="30%" title="달력" alt="calender"></img>
<img src="https://github.com/dorami4477/StudyDiary/assets/85213387/0deec587-329a-4233-994d-0a1ea4e93717" width="30%" title="일정 추가" alt="add plan"></img>

## 메인화면 2 요구사항

1. 날짜를 확인할 수 있는 달력을 화면에 넣어줍니다.
2. 일정이 존재하는 날짜의 숫자에는 특별한 효과를 넣어주세요. 특별한 효과는 자유롭게 정하셔도 됩니다. ex) 5월 7일에 스터디 일정이 있다면 7일에만 숫자의 색을 파란색으로 바꿔준다. 
3. 왼쪽 상단에 빨간색 상자(1)로 표시된 버튼을 누르면 메인화면 2-1로 이동합니다.
4. 오른쪽 상단에 빨간색 상자(2)로 표시된 버튼을 누르면 메인화면 2-2로 이동합니다.





## 메인화면 2-1 요구사항

1. 예정 되어있는 스터디 일정들을 나열하여 화면에 보여줍니다. 하나의 일정에 대하여 보여줄 정보는 날짜, 일정 이름, 일정 내용 입니다.
2. 왼쪽 상단에 뒤로가기 버튼을 누르면 메인화면 2로 이동합니다. 




## 메인화면 2-2 요구사항

1. 화면에 날짜를 선택할 수 있는 필드, 일정의 이름과 내용을 입력할 수 있는 두개의 필드, 버튼을 1개 추가해 주세요.
2. 버튼을 클릭하면 날짜를 선택했는지, 일정의 이름과 내용을 입력했는지 검사합니다. 입력하지 않은 필드가 있다면 버튼 위에 입력하지 않은 정보가 있습니다.” 라는 경고를 표시합니다. 모든 필드에 입력을 했다면 다음으로 선택한 날짜에 일정이 이미 존재하는지 검사합니다. 일정이 이미 존재한다면 버튼위에 “다른 일정이 이미 존재합니다.” 라는 경고를 표시합니다. 모든 검사를 통과 했다면 버튼 위에 “일정이 추가 됐습니다.” 라는 안내문구를 표시합니다.
3. 일정이 추가되면 메인화면 2에는 해당 날짜에 특별한 효과가 적용됩니다.
4. 일정이 추가되면 메인화면 2-1에 있는 일정들의 하단에 새로운 일정이 추가됩니다.
