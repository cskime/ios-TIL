# OOP(Object Oriented Programming)

- 객체를 중심으로 프로그래밍하기 위한 방법론, 패러다임
- 현실의 문제를 해결하기 위한 프로그래밍 과정에서 객체라는 것을 사용하여 현실의 상황을 좀 더 잘 반영하려고 하는 것
- 객체란 현실의 어떤 대상을 그 대상이 갖는(관련된) 상태(state) 및 행위(behave)로 구분해서 표현하려고 하는 것
  - 상태(state)란 그 대상이 갖는 속성 또는 상태를 의미. 코드에서 **변수**, **프로퍼티**에 해당
  - 행위(behave)란 그 대상이 가진 기능 또는 능력. 코드에서 **함수**, **메서드**에 해당
- 현실에서 성격에 따라 구분되는 각각의 대상을 객체로 나누어 표현함으로써 연관된 속성 및 기능을 하나의 객체로 묶어서 표현

## OOP의 특징

- 추상화 : 여러 객체들로부터 공통된 속성 및 행위를 추출해서 하나의 객체로 만드는 것
- 캡슐화 : 객체 외부에서 객체 내부의 속성 및 행위에 접근하는 것을 제한함으로써 프로그램의 결합도를 낮추고 데이터 응집도를 높임
- 상속 : 추상화한 객체를 관련된 다른 객체들이 상속받도록 함으로써 중복되는 속성 및 기능을 물려주어 반복작업을 하지 않도록 함
- 다형성 : 객체가 갖는 속성 및 행위가 상황에 따라 다른 의미로 해석될 수 있는 것. 코드에서 overloading 또는 상속의 경우 overriding을 통해 같은 이름의 속성 및 행위가 전혀 다른 동작을 하도록 함