local L = LibStub("AceLocale-3.0"):NewLocale(..., "koKR")
if not L then return end

L["A damage meter."] = "데미지 미터기입니다."
L["Memory usage is high. You may want to reset Skada, and enable one of the automatic reset options."] = "메모리 사용량이 높습니다. Skada 초기화가 필요할 수 있으며, 자동 초기화 옵션 중 하나를 활성화하세요."
L["Skada is out of date. You can download the newest version from \124cffffbb00%s\124r"] = "Skada가 오래된 버전입니다. \124cffffbb00%s\124r 에서 새 버전을 다운로드 받으세요."
L["Skada: Modes"] = "Skada: 모드"
L["Skada: Fights"] = "Skada: 전투"
L["Data Collection"] = "데이터 수집"
L["ENABLED"] = "활성화됨"
L["DISABLED"] = "비활성화됨"
L["Enable All"] = "모두 활성화"
L["Disable All"] = "모두 비활성화"
L["Stopping for wipe."] = "때문에 닦아의 중지."
L["Usage:"] = "사용:"
L["Commands:"] = "명령:"
L["Import"] = "가져오기"
L["Export"] = "내보내기"
L["Import/Export"] = "가져오기/내보내기"
-- profiles
L["Profiles"] = "프로필"
L["Profile Import/Export"] = "프로필 가져오기/내보내기"
L["Import Profile"] = "프로필 가져오기"
L["Export Profile"] = "프로필 내보내기"
L["Paste here a profile in text format."] = "여기에 문자 형식으로 프로필 붙여넣기."
L["Press CTRL-V to paste the text from your clipboard."] = "CTRL-V를 눌러 클립보드의 텍스트를 붙여넣습니다."
L["This is your current profile in text format."] = "이것은 문자 형식의 현재 프로필입니다."
L["Press CTRL-C to copy the text to your clipboard."] = "CTRL-C를 눌러 텍스트를 클립보드에 복사합니다."
L["Network Sharing"] = "네트워크 공유"
L["Player Name"] = "플레이어 이름"
L["Send Profile"] = "프로필 보내기"
L["Accept profiles from other players."] = "다른 플레이어의 프로필 수락."
L["opt_profile_received"] = "%s님이 프로필을 보내드렸습니다. 받은 프로필을 활성화 하시겠습니까?"
L["Progress"] = "진행"
L["Data Size: \124cffffffff%.1f\124rKB"] = "데이터 크기: \124cffffffff%.1f\124rKB"
L["Transmision Progress: %02.f%%"] = "진행 상황: %d%%"
L["Transmission Completed"] = "전송 완료"
-- common lines
L["Options"] = "옵션"
L["Options for %s."] = "%s\1241을;를; 위한 옵션을 설정합니다."
L["General"] = "일반"
L["General options for %s."] = "%s의 일반 옵션."
L["Text"] = "정본"
L["Text options for %s."] = "%s의 텍스트 옵션."
L["Format"] = "체재"
L["Format options for %s."] = "%s의 형식 옵션."
L["Appearance"] = "겉 모습"
L["Appearance options for %s."] = "%s의 모양 옵션."
L["Advanced"] = "상세"
L["Advanced options for %s."] = "%s의 고급 옵션."
L["Position"] = "위치"
L["Position settings for %s."] = "%s의 위치 옵션."
L["Width"] = "너비"
L["The width of %s."] = "%s의 너비."
L["Height"] = "높이"
L["The height of %s."] = "%s의 높이입니다."
L["Active Time"] = "활동 시간"
L["Segment Time"] = "세분화 시간"
L["Click for \124cff00ff00%s\124r"] = "클릭 -> \124cff00ff00%s\124r"
L["Shift-Click for \124cff00ff00%s\124r"] = "Shift-클릭 -> \124cff00ff00%s\124r"
L["Control-Click for \124cff00ff00%s\124r"] = "Control-클릭 -> \124cff00ff00%s\124r"
L["Alt-Click for \124cff00ff00%s\124r"] = "Alt-클릭 -> \124cff00ff00%s\124r"
L["Toggle Class Filter"] = "수업 필터"
L["Average"] = "평균"
L["Count"] = "카운트"
L["Refresh"] = "새로 고침 "
L["Percent"] = "백분율"
L["sPercent"] = "백분율 (하위 보기)"
L["General Options"] = "일반 옵션"
L["HoT"] = "지속 치유"
L["DoT"] = "지속 피해"
L["Hits"] = "횟수"
L["Normal Hits"] = "일반 적중"
L["Critical"] = "치명상"
L["Critical Hits"] = "치명타 및 극대화 적중"
L["Crushing"] = "강타"
L["Glancing"] = "비껴맞음"
L["ABSORB"] = "흡수함"
L["BLOCK"] = "방패 막기"
L["DEFLECT"] = "튕김"
L["DODGE"] = "피함"
L["EVADE"] = "벗어남"
L["IMMUNE"] = "면역"
L["MISS"] = "빗나감"
L["PARRY"] = "막음"
L["REFLECT"] = "반사함"
L["RESIST"] = "저항함"
L["Only for bosses."] = "상사에게만."
L["Enable this only against bosses."] = "보스에 대해서만 활성화하십시오."
-- talent, role & specs
L["Specialization"] = "전문화"
L["SPEC_62"] = "비전"
L["SPEC_63"] = "화염"
L["SPEC_64"] = "냉기"
L["SPEC_65"] = "신성"
L["SPEC_66"] = "방어"
L["SPEC_70"] = "징벌"
L["SPEC_71"] = "무기"
L["SPEC_72"] = "분노"
L["SPEC_73"] = "방어"
L["SPEC_102"] = "조화"
L["SPEC_103"] = "야성"
L["SPEC_104"] = "수호"
L["SPEC_105"] = "복원"
L["SPEC_250"] = "혈기"
L["SPEC_251"] = "냉기"
L["SPEC_252"] = "부정"
L["SPEC_253"] = "야수"
L["SPEC_254"] = "사격"
L["SPEC_255"] = "생존"
L["SPEC_256"] = "수양"
L["SPEC_257"] = "신성"
L["SPEC_258"] = "암흑"
L["SPEC_259"] = "암살"
L["SPEC_260"] = "무법"
L["SPEC_261"] = "잠행"
L["SPEC_262"] = "정기"
L["SPEC_263"] = "고양"
L["SPEC_264"] = "복원"
L["SPEC_265"] = "고통"
L["SPEC_266"] = "악마"
L["SPEC_267"] = "파괴"
L["SPEC_268"] = "양조"
L["SPEC_269"] = "풍운"
L["SPEC_270"] = "운무"
L["SPEC_577"] = "파멸"
L["SPEC_581"] = "복수"
L["SPEC_1467"] = "황폐"
L["SPEC_1468"] = "보존"
L["SPEC_1473"] = "증강"
-- segment info
L["Start"] = "시작"
L["End"] = "종료"
-- windows section:
L["Window"] = "창"
L["Windows"] = "창"
L["Create Window"] = "창 생성"
L["Window Name"] = "창 이름"
L["Enter the name for the new window."] = "새 창의 이름을 입력합니다."
L["Delete Window"] = "창 삭제"
L["Choose the window to be deleted."] = "삭제할 창을 선택합니다."
L["Are you sure you want to delete this window?"] = "이 창을 삭제 하시겠습니까?"
L["Delete All Windows"] = "모든 창 삭제"
L["Are you sure you want to delete all windows?"] = "모든 창을 삭제하시겠습니까?"
L["Rename Window"] = "창 이름 변경"
L["Enter the name for the window."] = "창의 이름을 입력합니다."
L["Test Mode"] = "시험 모드"
L["Creates fake data to help you configure your windows."] = "창 구성에 도움이 되도록 가짜 데이터를 생성합니다."
-- L["Child Window"] = ""
-- L["A child window will replicate the parent window actions."] = ""
-- L["Child Window Mode"] = ""
L["Lock Window"] = "창 고정"
L["Locks the bar window in place."] = "바 창을 고정합니다."
L["Hide Window"] = "창 숨기기"
L["Hides the window."] = "창을 숨 깁니다."
L["Sticky Window"] = "끈적한 창"
L["Allows the window to stick to other Skada windows."] = "창을 다른 Skada 창에 스냅 할 수 있습니다."
L["Snap to best fit"] = "최적의 크기로 자동 조절"
L["Snaps the window size to best fit when resizing."] = "창 크기를 조절할 때 최적의 크기로 맞춥니다."
L["Disable Resize Buttons"] = "크기 조절 버튼 비활성"
L["Resize and lock/unlock buttons won't show up when you hover over the window."] = "창 위로 마우스를 가져갈 때 크기 조정 및 잠금/잠금 해제 버튼을 억제합니다."
L["Disable stretch button"] = "늘리기 버튼 비활성"
L["Stretch button won't show up when you hover over the window."] = "창 위로 마우스를 가져가면 늘이기 버튼이 표시되지 않습니다."
L["Reverse window stretch"] = "창을 아래로 늘이기"
L["opt_botstretch_desc"] = "늘이기 버튼을 창의 맨 아래에 놓고 창을 아래쪽으로 늘립니다."
L["Display System"] = "표시 시스템"
L["Choose the system to be used for displaying data in this window."] = "이 창에 자료를 표시하는 데 사용할 시스템을 선택합니다."
L["Copy Settings"] = "설정 복사"
L["Choose the window from which you want to copy the settings."] = "설정을 복사 할 창을 선택하십시오."
-- bars
L["Bars"] = "바"
L["Left Text"] = "왼쪽 텍스트"
L["Right Text"] = "오른쪽 텍스트"
L["Font"] = "폰트"
L["The font used by %s."] = "%s에서 사용하는 글꼴입니다."
L["Font Size"] = "글꼴 크기"
L["The font size of %s."] = "%s의 글꼴 크기입니다."
L["Font Outline"] = "글꼴 그림자"
L["Sets the font outline."] = "글꼴 윤곽을 설정합니다."
L["Outline"] = "윤곽"
L["Monochrome"] = "단색"
L["Thick Outline"] = "두꺼운 윤곽"
L["Outline & Monochrome"] = "윤곽 및 단색"
L["Thick Outline & Monochrome"] = "두꺼운 윤곽 및 단색"
L["Bar Texture"] = "바 텍스쳐"
L["The texture used by all bars."] = "모든 바에 사용할 바 텍스쳐입니다."
L["Spacing"] = "간격"
L["Distance between %s."] = "%s 사이의 거리입니다."
L["Displacement"] = "배수량"
L["The distance between the edge of the window and the first bar."] = "창 가장자리와 첫 번째 막대 사이의 거리."
L["Bar Orientation"] = "바 방향"
L["The direction the bars are drawn in."] = "바의 그려지는 방향입니다."
L["Left to right"] = "왼쪽에서 오른쪽"
L["Right to left"] = "오른쪽에서 왼쪽"
L["Reverse bar growth"] = "바 성장 방향 반대로"
L["Bars will grow up instead of down."] = "바를 위로 성장시킵니다."
L["Disable bar highlight"] = "바 강조 비활성"
L["Hovering a bar won't make it brighter."] = "이 옵션을 사용하면 바에 마우스를 올렸을 때 바를 강조하지 않습니다."
L["Bar Color"] = "바 색상"
L["Choose the default color of the bars."] = "바의 기본 색상을 선택합니다."
L["Background Color"] = "배경 색상"
L["The color of the background."] = "배경의 색상을 설정합니다."
L["Custom Color"] = "커스텀 컬러"
L["Use a different color for my bar."] = "내 바에 다른 색상을 사용하십시오."
L["My Color"] = "나의 색깔"
L["Spell school colors"] = "주문 속성 색상"
L["Use spell school colors where applicable."] = "적용 가능한 곳에 주문 속성 색상을 사용합니다."
L["When possible, bars will be colored according to player class."] = "가능할 때 바에 플레이어 직업에 따라 색상을 입힙니다."
L["When possible, bar text will be colored according to player class."] = "가능할 때 바 문자에 플레이어 직업에 따라 색상을 입힙니다."
L["Class Icons"] = "직업 아이콘"
L["Use class icons where applicable."] = "적용 가능한 곳에 직업 아이콘을 사용합니다."
L["Spec Icons"] = "사양 아이콘"
L["Use specialization icons where applicable."] = "해당되는 경우 전문화 아이콘을 사용하십시오."
L["Role Icons"] = "역할 아이콘"
L["Use role icons where applicable."] = "적용 가능한 곳에 역할 아이콘을 사용합니다."
L["Show Spark Effect"] = "섬광 효과 표시"
L["Click Through"] = "클릭 무시"
L["Disables mouse clicks on bars."] = "바를 클릭할 수 없도록 합니다."
L["Smooth Bars"] = "부드러운 바"
L["Animate bar changes smoothly rather than immediately."] = "바를 즉시 변경하지 않고 부드럽게 변경시킵니다."
-- title bar
L["Title Bar"] = "제목 바"
L["Enables the title bar."] = "제목 표시줄을 활성화합니다."
L["Swap Position"] = "위치 바꾸기"
L["When enabled, the title bar will be moved to the opposite side of its current position."] = "활성화되면 타이틀 바가 현재 위치의 반대쪽으로 이동됩니다."
L["Include set"] = "세트 포함"
L["Include set name in title bar"] = "제목 바에 세트 이름 포함"
L["Encounter Timer"] = "우두머리 전투 타이머"
L["When enabled, a stopwatch is shown on the left side of the text."] = "활성화하면 문자 왼쪽에 초시계가 표시됩니다."
L["Mode Icon"] = "모드 아이콘"
L["Shows mode's icon in the title bar."] = "제목 표시줄에 모드 아이콘을 표시합니다."
L["The texture used as the background of the title."] = "제목의 배경에 사용할 텍스쳐를 설정합니다."
L["Border texture"] = "테두리 텍스쳐"
L["The texture used for the borders."] = "테두리에 사용할 텍스쳐를 설정합니다."
L["Border Color"] = "테두리 색상"
L["The color used for the border."] = "테두리 색상으로 사용합니다."
L["Buttons"] = "버튼"
L["Auto Hide Buttons"] = "버튼 자동 숨기기"
L["Show window buttons only if the cursor is over the title bar."] = "커서가 제목 표시줄 위에 있을 때만 창 버튼을 표시합니다."
L["Buttons Style"] = "버튼 스타일"
-- general window
L["Background"] = "배경"
L["Background Texture"] = "배경 텍스쳐"
L["The texture used as the background."] = "배경으로 사용할 텍스쳐를 설정합니다."
L["Tile"] = "바둑판 배열"
L["Tile the background texture."] = "배경 텍스쳐를 바둑판 배열합니다."
L["Tile Size"] = "바둑판 큭기"
L["The size of the texture pattern."] = "텍스쳐 패턴의 크기입니다."
L["Border"] = "테두리"
L["Border Thickness"] = "테두리 두께"
L["The thickness of the borders."] = "테두리의 두께를 설정합니다."
L["Border Insets"] = "보더 인셋"
L["The distance between the window and its border."] = "창과 테두리 사이의 거리입니다."
L["Scale"] = "크기 비율"
L["Sets the scale of the window."] = "창의 크기 비율을 설정합니다."
L["Strata"] = "우선순위"
L["This determines what other frames will be in front of the frame."] = "프레임 앞에 어떤 다른 프레임을 표시할 지 선택합니다."
L["Clamped To Screen"] = "화면에 고정"
L["Toggle whether to permit movement out of screen."] = "화면 밖으로 창이 나가지 않도록 사용합니다."
L["X Offset"] = "X 좌표"
L["Y Offset"] = "Y 좌표"
-- switching
L["Mode Switching"] = "모드 전환"
L["Combat Mode"] = "전투 모드"
L["opt_combatmode_desc"] = "전투 시작시 자동으로 \124cffffbb00현재\124r 세분화의 이 모드로 전환합니다."
L["Wipe Mode"] = "전멸 모드"
L["opt_wipemode_desc"] = "전멸 후 자동으로 \124cffffbb00현재\124r 세분화의 이 모드로 전환합니다."
L["Return after combat"] = "전투 후 돌아가기"
L["Return to the previous set and mode after combat ends."] = "전투 종료 후 이전 세트와 모드로 돌아갑니다."
L["Auto switch to current"] = "현재 전투로 자동 변경"
L["opt_autocurrent_desc"] = "전투가 시작되면 자동으로 \124cffffbb00현재\124r 전투 세분화로 변경합니다."
L["Auto Hide"] = "자동 숨기기"
L["While in combat"] = "전투 중일 때"
L["While out of combat"] = "전투 중이 아닐 때"
L["While not in a group"] = "파티가 아닐 때"
L["While inside an instance"] = "인스턴스 안에 있을 때"
L["While not inside an instance"] = "인스턴스 밖에 있을 때"
L["In Battlegrounds"] = "전장에서"
L["Inline Bar Display"] = "인라인 바 표시"
L["mod_inline_desc"] = "인라인 표시는 수평 창 스타일입니다."
L["Font Color"] = "글자 색"
-- L["Font Color.\nClick \"Class Colors\" to begin."] = ""
-- L["opt_barwidth_desc"] = ""
L["Fixed bar width"] = "바 너비 고정"
L["opt_fixedbarwidth_desc"] = "선택하면 바 너비가 고정됩니다. 선택하지 않으면 바 너비는 문자 길이에 따라 달라집니다."
L["Use class colors for %s."] = "%s 에 클래스 색상을 사용합니다."
L["opt_isusingclasscolors_desc"] = "와 함께: %s - 5.71M (21.7K)\n없이: %s - 5.71M (21.7K)"
L["Put values on new line."] = "새 줄에 값을 넣습니다. "
-- L["opt_isonnewline_desc"] = ""
L["Use ElvUI skin if avaliable."] = "가능한 경우 사용 ElvUI 피부."
-- L["opt_isusingelvuiskin_desc"] = ""
L["Use solid background."] = "단색 배경을 사용하십시오."
-- L["Un-check this for an opaque background."] = ""
L["Data Text"] = "자료 문자"
L["mod_broker_desc"] = "자료 문자는 LDB 자료 제공으로 작동합니다. Titan Panel이나 ChocolateBar같은 모든 LDB 표시 애드온과 작동할 수 있습니다. 선택적 내장 프레임도 있습니다."
L["Use frame"] = "창을 사용"
L["opt_useframe_desc"] = "독립 실행형 창을 표시합니다. Titan Panel 또는 ChocolateBar와 같은 LDB 디스플레이 공급자를 사용하는 경우에는 필요하지 않습니다."
L["Text Color"] = "문자 색상"
L["Choose the default color."] = "기본 색상을 선택하십시오."
L["Hint: Left-Click to set active mode."] = "힌트: 활성화 모드를 설정하려면 왼쪽-클릭"
L["Right-Click to set active set."] = "활성화 세트를 설정하려면 오른쪽-클릭하세요."
L["Shift+Left-Click to open menu."] = "Shift+왼쪽-클릭으로 메뉴를 엽니다."
-- data resets
L["Data Resets"] = "자료 초기화"
L["Reset on entering instance"] = "인스턴스 입장 시 초기화"
L["Controls if data is reset when you enter an instance."] = "인스턴스 입장 시 자료를 초기화할 지 설정합니다."
L["Reset on joining a group"] = "파티/공격대 참여 시 초기화"
L["Controls if data is reset when you join a group."] = "파티/공격대 참여 시 자료를 초기화할 지 설정합니다."
L["Reset on leaving a group"] = "파티/공격대 탈퇴 시 초기화"
L["Controls if data is reset when you leave a group."] = "파티/공격대를 떠났을 때 자료를 초기화할 지 설정합니다."
L["Ask"] = "묻기"
L["Do you want to reset Skada?\nHold SHIFT to reset all data."] = "Skada를 초기화하시겠습니까?\n리셋 모든 것에 보류 SHIFT."
L["All data has been reset."] = "모든 자료가 초기화되었습니다."
L["There is no data to reset."] = "재설정할 데이터가 없습니다."
L["Skip reset dialog"] = "재설정 대화 상자 건너 뛰기"
L["opt_skippopup_desc"] = "확인 대화 상자없이 Skada를 재설정하려면이 옵션을 활성화하십시오."
L["Are you sure you want to reinstall Skada?"] = "Skada를 다시 설치하시겠습니까?"
-- general options
L["Show minimap button"] = "미니맵 버튼 표시"
L["Toggles showing the minimap button."] = "미니맵 버튼 표시를 전환합니다."
L["Transliterate"] = "음역하다"
L["Converts Cyrillic letters into Latin letters."] = "키릴 문자를 라틴 문자로 변환합니다."
L["Remove realm name"] = "서버 이름 제거"
L["opt_realmless_desc"] = "활성화하면 캐릭터의 서버 이름을 표시하지 않습니다."
L["Merge pets"] = "소환수 합산"
L["Merges pets with their owners. Changing this only affects new data."] = "소환수를 소유자와 합산합니다. 새로운 자료부터 적용됩니다."
L["Show totals"] = "총량 표시"
L["Shows a extra row with a summary in certain modes."] = "특정 모드에서 요약을 나타내는 추가 칸을 표시합니다."
L["Only keep boss fighs"] = "우두머리 전투만 유지"
L["Boss fights will be kept with this on, and non-boss fights are discarded."] = "우두머리 전투는 이 상태로 유지되며, 비-우두머리 전투는 차단됩니다."
L["Always save boss fights"] = "항상 보스 싸움을 저장"
L["Boss fights will be kept with this on and will not be affected by Skada reset."] = "보스전은 유지되며 Skada 초기화의 영향을 받지 않습니다."
L["Hide when solo"] = "솔로잉 시 숨기기"
L["Hides Skada's window when not in a party or raid."] = "파티 또는 공격대가 아닐 때 Skada 창을 숨깁니다."
L["Hide in PvP"] = "PvP 시 숨기기"
L["Hides Skada's window when in Battlegrounds/Arenas."] = "전장/투기장에서 Skada 창을 숨깁니다."
L["Hide in combat"] = "전투 중 숨기기"
L["Hides Skada's window when in combat."] = "전투 시 Skada 창을 숨깁니다."
L["Show in combat"] = "전투에 표시"
L["Shows Skada's window when in combat."] = "전투 중일 때 Skada 창을 표시합니다."
L["Disable while hidden"] = "숨겨진 동안 비활성화"
L["Skada will not collect any data when automatically hidden."] = "자동으로 숨겨져 있을 때 Skada는 어떠한 자료도 수집하지 않습니다."
L["Sort modes by usage"] = "용도 별 모드 정렬"
L["The mode list will be sorted to reflect usage instead of alphabetically."] = "모드 목록을 가나다 순 대신 용도에 따라 정렬합니다."
L["Show rank numbers"] = "순위 표시"
L["Shows numbers for relative ranks for modes where it is applicable."] = "사용 가능한 모드에서 순위를 표시합니다."
L["Aggressive combat detection"] = "적극적인 전투 감지"
L["opt_tentativecombatstart_desc"] = [[Skada는 공격대 중 가장 잘 작동하는 매우 전통적인 전투 감지 방법을 사용합니다.
이 옵션을 사용하면 Skada는 다른 데미지 미터기를 모방합니다.
던전을 진행할 때 유용합니다, 우두머리 전투에선 의미가 없습니다.]]
L["Autostop"] = "전멸 시 일찍 멈추기"
L["opt_autostop_desc"] = "전체 공격대원의 절반 이상이 죽으면 현재 세분화를 자동으로 멈춥니다."
L["Always show self"] = "항상 자신 표시"
L["opt_showself_desc"] = "충분한 공간이 없어도 플레이어를 마지막에 표시하도록 합니다."
L["Number format"] = "숫자 형식"
L["Controls the way large numbers are displayed."] = "큰 숫자의 표시 방식을 설정합니다."
L["Condensed"] = "요약"
L["Detailed"] = "상세"
L["Combined"] = "결함"
L["Comma"] = "반점"
L["Numeral system"] = "명수법"
L["Select which numeral system to use."] = "사용할 명수법을 선택하세요."
L["Auto"] = "자동"
L["Western"] = "서양"
L["East Asia"] = "동아시아"
L["Brackets"] = "괄호"
L["Choose which type of brackets to use."] = "사용할 괄호 유형을 선택하십시오."
L["Separator"] = "구분자"
L["Choose which character is used to separator values between brackets."] = "괄호 사이의 값을 구분하는 데 사용할 문자를 선택합니다."
L["Number of decimals"] = "소수 자릿수"
L["Controls the way percentages are displayed."] = "백분율이 표시되는 방식을 제어합니다."
L["Data Feed"] = "자료 제공"
L["Time Measure"] = "시간 측정"
L["Activity Time"] = "활동 시간"
L["Effective Time"] = "실질 시간"
L["opt_timemesure_desc"] = [=[|cffffff00활동 시간|r: 각 공격대원의 타이머가 해당 공대원의 활동이 중단되면 초읽기를 중지했다가 활동 재개시 다시 초읽기에 들어갑니다. Dps와 Hps 산출의 일반적인 방법입니다.

|cffffff00실질 시간|r: 순위를 매길때 쓰입니다, 이 방법은 모든 공격대원의 Dps와 Hps를 산출하기 위해 측정된 전투 시간을 사용합니다.]=]
L["opt_feed_desc"] = "DataBroker 보기에 어떤 자료를 표시할 지 선택하세요. Titan Panel같은 LDB 표시 애드온이 필요합니다."
L["Number set duplicates"] = "중복 횟수"
L["Append a count to set names with duplicate mob names."] = "몹 이름을 복제하여 세트 이름에 수를 추가합니다."
L["Set Format"] = "세트 형식"
L["Controls the way set names are displayed."] = "세트 이름 표시 방식을 설정합니다."
L["Links in reports"] = "보고서의 링크"
L["When possible, use links in the report messages."] = "가능하면 보고서 메시지에 링크를 사용하십시오."
L["Segments to keep"] = "보관할 세그먼트"
L["The number of fight segments to keep. Persistent segments are not included in this."] = "유지할 전투 세분화의 수입니다. 지속 세분화는 여기 포함되지 않습니다."
L["Persistent segments"] = "영구 세그먼트"
L["The number of persistent fight segments to keep."] = "유지할 영구 세그먼트의 수입니다."
L["Memory Check"] = "메모리 확인"
L["Checks memory usage and warns you if it is greater than or equal to %dmb."] = "메모리 사용량을 확인하고 %dMB보다 크거나 같은 경우 경고합니다."
L["Disable Comms"] = "통신 비활성화"
L["Minimum segment length"] = "최소 세그먼트 길이"
L["The minimum length required in seconds for a segment to be saved."] = "저장될 세그먼트에 필요한 최소 길이(초)입니다."
L["Update frequency"] = "갱신 주기"
L["How often windows are updated. Shorter for faster updates. Increases CPU usage."] = "윈도우 업데이트됩니다 얼마나 자주. 빠른 업데이트에 대한 짧은. CPU 사용량이 증가합니다."
-- columns
L["Columns"] = "세로 (칸)"
-- tooltips
L["Tooltips"] = "툴팁"
L["Show Tooltips"] = "툴팁 표시"
L["Shows tooltips with extra information in some modes."] = "일부 모드에서 툴팁에 추가 정보를 표시합니다."
L["Informative Tooltips"] = "유용한 정보 툴팁"
L["Shows subview summaries in the tooltips."] = "툴팁에 요약 정보 부가 표시를 표시합니다."
L["Subview Rows"] = "부가 표시 열"
L["The number of rows from each subview to show when using informative tooltips."] = "유용한 정보 툴팁을 사용할 때 각 부가 표시의 열의 번호를 표시합니다."
L["Tooltip Position"] = "툴팁 위치"
L["Position of the tooltips."] = "툴팁의 위치입니다."
L["Top Right"] = "오른쪽 상단"
L["Top Left"] = "왼쪽 상단"
L["Bottom Right"] = "오른쪽 하단"
L["Bottom Left"] = "왼쪽 하단"
L["Smart"] = "스마트"
L["Follow Cursor"] = "커서 따라 가기"
L["Top"] = "상단"
L["Bottom"] = "하단"
L["Right"] = "오른쪽"
L["Left"] = "왼쪽"
-- disabled modules
L["\124cff00ff00Requires\124r: %s"] = "\124cff00ff00필요사항\124r: %s"
L["Modules"] = "모듈"
L["Disabled Modules"] = "비활성화된 모듈"
L["Modules Options"] = "모듈 설정"
L["Tick the modules you want to disable."] = "비활성화할 모듈을 찍으세요."
L["This change requires a UI reload. Are you sure?"] = "변경하려면 UI 재시작이 필요합니다. 다시 불러올까요?"
-- themes options
L["Theme"] = "테마"
L["Themes"] = "테마"
L["Manage Themes"] = "테마 관리"
L["All Windows"] = "모든 창문"
L["Apply Theme"] = "테마 적용"
L["Theme applied!"] = "테마 적용!"
L["Name of your new theme."] = "당신의 새로운 테마의 이름입니다."
L["Save Theme"] = "테마 저장"
L["Delete Theme"] = "테마 삭제"
L["Are you sure you want to delete this theme?"] = "이 테마를 삭제하시겠습니까?"
L["Paste here a theme in text format."] = "여기에 문자 형식으로 테마 붙여넣기."
L["This is your current theme in text format."] = "이것은 문자 형식의 현재 테마입니다."
-- scroll options
L["Scroll"] = "스크롤"
L["Wheel Speed"] = "휠 속도"
L["opt_wheelspeed_desc"] = "창에서 마우스 휠을 사용할 때 스크롤 속도를 변경합니다."
L["Scroll Icon"] = "스크롤 아이콘"
L["Scroll mouse button"] = "스크롤 마우스 버튼"
-- minimap button
L["Skada Summary"] = "Skada 요약"
L["\124cff00ff00Left-Click\124r to toggle windows."] = "창을 전환하려면 왼쪽 버튼을 클릭하십시오."
L["\124cff00ff00Ctrl+Left-Click\124r to show/hide windows."] = "Ctrl+왼쪽-창 표시/숨기기."
L["\124cff00ff00Shift+Left-Click\124r to reset."] = "Shift+왼쪽-클릭으로 초기화합니다."
L["\124cff00ff00Right-Click\124r to open menu."] = "메뉴를 열려면 오른쪽 클릭."
-- skada menu
L["Skada Menu"] = "Skada 메뉴"
L["Select Segment"] = "선택 세그먼트"
L["Delete Segment"] = "세분화 삭제"
L["Keep Segment"] = "세분화 유지"
L["Toggle Windows"] = "창 전환"
L["Show/Hide Windows"] = "창 표시/숨기기"
L["New Segment"] = "새 세그먼트"
L["Starts a new segment."] = "새 세그먼트를 시작합니다."
L["New Phase"] = "새로운 단계"
L["Starts a new phase."] = "새 단계를 시작합니다."
L["Select All"] = "모두 선택"
L["Deselect All"] = "모두 선택 해제"
-- window buttons
L["Configure"] = "설정"
L["Open Config"] = "구성 열기"
L["btn_config_desc"] = "설정 창 열기"
L["btn_reset_desc"] = [[유지하도록 설정한 것을 제외하고 모든 전투 자료를 초기화합니다.
|cff00ff00Shift 클릭|r -> 세분화 삭제.]]
L["Segment"] = "세분화"
L["btn_segment_desc"] = [[특정 세분화로 변경합니다.
|cff00ff00Shift 클릭|r -> |cffffbb00다음|r 전투.
|cff00ff00Shift 오른쪽 클릭|r -> |cffffbb00이전|r 전투.
|cff00ff00가운데 클릭|r -> |cffffbb00현재|r 전투.]]
L["Mode"] = "모드"
L["Jump to a specific mode."] = "특정 모드로 변경합니다."
L["Report"] = "보고서"
L["btn_report_desc"] = [[다양한 방법으로 다른 사람에게 당신의 자료를 보고할 수 있는 대화창을 엽니다.
|cff00ff00Shift-클릭|r -> 퀵 리포트.]]
L["Stop"] = "중지"
L["btn_stop_desc"] = "현재 세분화를 중지하거나 재개합니다. 전멸 후 자료를 제외하는 데 유용합니다. 설정에서 자동으로 중지하도록 설정할 수 있습니다."
L["Segment Stopped."] = "세그먼트 중지됨."
L["Segment Paused."] = "세그먼트 일시 중지됨."
L["Segment Resumed."] = "세그먼트 재개됨."
L["Quick Access"] = "빠른 접근"
-- default segments
L["Total"] = "전체"
L["Current"] = "현재"
-- report module and window
L["Skada: %s for %s:"] = "Skada: %2$s의 %1$s:"
L["Self"] = "자신"
L["Whisper Target"] = "대상에게 귓속말"
L["Copy & Paste"] = "복사 & 붙여넣기"
L["[General]"] = "공개"
L["[LocalDefense]"] = "수비"
L["[LookingForGroup]"] = "파티찾기"
L["[Trade]"] = "거래"
L["Line"] = "줄"
L["Lines"] = "줄"
L["There is nothing to report."] = "보고할 자료가 없습니다."
L["No mode or segment selected for report."] = "보고서를 위한 모드나 세분화가 선택되지 않았습니다."
-- Bar Display Module --
L["Bar Display"] = "바 표시"
L["mod_bar_desc"] = "바 표시는 대부분의 데미지 미터기가 사용하는 일반적인 바 형식의 창입니다. 폭 넓게 스타일링할 수 있습니다."
-- Bar Display (Legacy)
L["Legacy Bar Display"] = "바 표시(구)"
L["Max Bars"] = "최대 바"
L["The maximum number of bars shown."] = "표시할 바의 최대 수치입니다."
L["Show Menu Button"] = "메뉴 버튼 표시"
L["Shows a button for opening the menu in the window title bar."] = "창 제목 바에 메뉴를 여는 버튼을 표시합니다."
L["Class Color Bars"] = "직업 색상 바"
L["Class Color Text"] = "직업 색상 문자"
-- Threat Module --
L["Threat"] = "위협 수준"
L["Threat Warning"] = "위협 수준 경고"
L["Flash Screen"] = "화면 깜빡임"
L["This will cause the screen to flash as a threat warning."] = "위협 수준 경고로 화면을 깜빡입니다."
L["Shake Screen"] = "화면 진동"
L["This will cause the screen to shake as a threat warning."] = "위협 수준 경고로 화면을 흔듭니다."
L["Warning Message"] = "경고 메시지"
L["Print a message to screen when you accumulate too much threat."] = "너무 많은 위협 수준이 쌓일때 화면에 메시지를 보여줍니다."
L["Play sound"] = "소리 재생"
L["This will play a sound as a threat warning."] = "위협 수준 경고로 소리를 재생합니다."
L["Message Output"] = "출력"
L["Choose where warning messages should be displayed."] = "경고 메시지를 표시할 위치를 선택합니다."
L["Chat Frame"] = "대화창"
L["Blizzard Error Frame"] = "블리자드 오류 창"
L["Threat sound"] = "위협 수준 소리"
L["opt_threat_soundfile_desc"] = "당신의 위협 수준 백분율이 특정 수준에 도달했을 때  재생할 소리입니다."
L["Warning Frequency"] = "경고 빈도"
L["Threat Threshold"] = "위협 수준 임계치"
L["opt_threat_threshold_desc"] = "당신의 위협 수준이 방어 전담과 비교하여 이 수준에 도달했을 때 경고가 표시됩니다."
L["Show raw threat"] = "기본 위협 표시"
L["opt_threat_rawvalue_desc"] = "원거리에서 변경된 위협 수준 백분율 대신 방어 전담과 비교하여 기본 위협 수준 백분율을 표시합니다."
L["Use focus target"] = "주시 대상 사용"
L["opt_threat_focustarget_desc"] = "Skada에 당신의 '대상'과 '대상의 대상'에 대한 위협을 표시하기 위해 추가로 당신의 '주시'와 '주시 대상'을 검사합니다."
L["Disable while tanking"] = "방어전담시 사용 안함"
L["opt_threat_notankwarnings_desc"] = "방어 태세, 곰 변신, 정의의 격노나 냉기의 형상일때 모든 경고를 보이지 않습니다."
L["Ignore Pets"] = "펫 무시"
L["opt_threat_ignorepets_desc"] = [=[위협 수준 데이터를 표시할 유닛을 정할 때 Skada이 적대적 플레이어의 소환수는 걸러내도록 지시합니다.

플레이어의 소환수가 |cffffff78적극적|r 또는 |cffffff78방어적|r 모드일 때는 위협 수준 테이블을 유지하고 가장 높은 위협 수준으로 대상을 공격하는 일반적인 몹처럼 작동합니다. 만약 소환수가 특정 대상을 공격하도록 지시하면, 소환수는 여전히 위협 수준 테이블을 유지하지만 지정한 대상에게 100%의 위협 수준을 가진것으로 고정됩니다. 플레이어의 소환수는 당신을 공격하도록 강제로 도발할 수 있습니다.

하지만, |cffffff78수동적|r 모드의 플레이어 소환수는 위협 수준 테이블을 가지지 않으며, 그들을 도발할 수 없습니다. 소환수는 어떠한 위협 수준 테이블을 가지지 않은 채로 오직 공격하도록 지시된 대상을 공격합니다.

플레이어 소환수를 |cffffff78따르기|r로 지시했을 때, 소환수의 위협 수준 테이블은 즉시 삭제되며 공격을 멈춥니다, 하지만 적극적/방어적 모드에 따라서 즉시 새로운 대상을 다시 얻습니다.]=]
L["> Pull Aggro <"] = "> 어그로 획득 <"
L["Show Pull Aggro Bar"] = "어그로 획득 바 표시"
L["opt_threat_showaggrobar_desc"] = "어그로를 획득하기 위해 당신이 넘어야 할 위협 바를 표시합니다."
L["Test Warnings"] = "테스트 경고"
L["TPS"] = "TPS"
L["Threat: Personal Threat"] = "위협 수준: 개인 위협 수준"
-- Absorbs & Healing Module --
L["Healing"] = "치유"
L["Healing Done"] = "치유량"
L["Healing Taken"] = "받은 치유"
L["HPS"] = "HPS"
L["sHPS"] = "HPS (하위 보기)"
L["Healing: Personal HPS"] = "치유: 개인 HPS"
L["RHPS"] = "RHPS"
L["Healing: Raid HPS"] = "치유: 공격대 HPS"
L["Total Healing"] = "총 치유"
L["Overheal"] = "초과 치유"
L["Overhealing"] = "초과 치유"
L["Absorbs"] = "흡수"
L["Target List"] = "대상 목록"
L["Spell List"] = "스펠 리스트"
L["APS"] = "APS"
L["sAPS"] = "APS (하위 보기)"
L["Absorbs and Healing"] = "흡수와 치유"
L["Healing Done By Spell"] = "주문에서 치유"
L["Source List"] = "소스 목록"
-- Auras Module --
L["Uptime"] = "가동 시간"
L["Buffs and Debuffs"] = "버프 및 디버프"
L["Buffs"] = "버프"
L["Debuffs"] = "디버프"
L["%s's <%s> targets"] = "%s - %s의 대상"
-- L["%s's <%s> sources"] = ""
-- L["Sunder Counter"] = ""
-- L["Number of seconds after application to count refreshs."] = ""
-- L["Enemy Buffs"] = ""
-- L["Enemy Debuffs"] = ""
-- CC Tracker Module --
L["Crowd Control"] = "군중 제어"
L["CC Done"] = "시전한 군중 제어"
L["CC Taken"] = "받은 군중 제어"
L["CC Breaks"] = "군중 제어 제거됨"
L["Ignore Main Tanks"] = "방어 전담 무시"
L["%s on %s removed by %s"] = "%2$s에게 걸린 %1$s\1241이;가; %3$s\1241으로;로; 제거되었습니다"
L["%s on %s removed by %s's %s"] = "%2$s에게 걸린 %1$s\1241이;가; %3$s의 %4$s\1241으로;로; 제거되었습니다"
-- Damage Module --
-- damage done module
L["Damage"] = "피해"
L["Spell Details"] = "주문세부"
L["Damage Done"] = "피해량"
L["Useful Damage"] = "유용한 손상"
L["Useful damage on %s"] = "%s에 유용한 피해"
L["Damage Done By Spell"] = "주문으로 인한 피해"
-- L["%s's sources"] = ""
L["DPS"] = "DPS"
L["sDPS"] = "DPS (하위 보기)"
L["Damage: Personal DPS"] = "피해: 개인 DPS"
L["RDPS"] = "RDPS"
L["Damage: Raid DPS"] = "피해: 공격대 DPS"
L["Absorbed Damage"] = "흡수된 손상"
L["Enable this if you want the damage absorbed to be included in the damage done."] = "가한 피해에 흡수된 피해가 포함되도록 하려면 이 옵션을 활성화합니다."
L["Damage Done By School"] = "학교가 가한 피해"
-- killing blows module
L["Only PvP Kills"] = "PvP 킬만 계산됩니다."
L["When enabled, only kills against enemy players count."] = "활성화되면 적 플레이어에 대한 킬만 계산됩니다."
L["Announce killing blows after combat ends. Only works for boss fights."] = "전투가 끝난 후 결정타를 선언합니다. 보스에게만 작동합니다."
-- damage taken module
L["Damage Taken"] = "받은 피해"
L["Damage Taken By Spell"] = "주문 별 받은 피해"
L["%s's targets"] = "%s의 표적"
L["DTPS"] = "DTPS"
L["sDTPS"] = "DTPS (하위 보기)"
-- enemy damage done module
L["Enemies"] = "적"
L["Enemy Damage Done"] = "적 피해량"
-- enemy damage taken module
L["Enemy Damage Taken"] = "적이 받은 피해"
L["%s below %s%%"] = "%s %s%% 미만"
L["%s - %s%% to %s%%"] = "%s - %s%% 에서 %s%%"
L["Phase %s"] = "위상 %s"
L["%s - Phase %s"] = "%s - 위상 %s"
L["%s - Phase 1"] = "%s - 위상 1"
L["%s - Phase 2"] = "%s - 위상 2"
L["%s - Phase 3"] = "%s - 위상 3"
L["%s (Main Boss)"] = "%s (주보스)"
L["\124cffffbb00%s\124r - \124cff00ff00Phase %s\124r started."] = "\124cffffbb00%s\124r - \124cff00ff00위상 %s\124r 시작됨."
L["\124cffffbb00%s\124r - \124cff00ff00Phase %s\124r stopped."] = "\124cffffbb00%s\124r - \124cff00ff00위상 %s\124r 중지됨."
L["\124cffffbb00%s\124r - \124cff00ff00Phase %s\124r resumed."] = "\124cffffbb00%s\124r - \124cff00ff00위상 %s\124r 재개됨."
-- enemy healing done module
L["Enemy Healing Done"] = "적의 치유량"
-- avoidance and mitigation module
-- L["Avoidance & Mitigation"] = ""
L["More Details"] = "자세한 내용은"
L["%s's details"] = "%s의 세부정보"
-- friendly fire module
L["Friendly Fire"] = "아군에게 준 피해"
-- useful damage targets
L["Important targets"] = "중요한 적들"
-- L["Oozes"] = ""
-- L["Princes overkilling"] = ""
-- L["Adds"] = ""
-- L["Halion and Inferno"] = ""
-- L["Valkyrs overkilling"] = ""
-- Deaths Module --
L["Deaths"] = "죽음"
-- L["%s's deaths"] = ""
L["Death log"] = "죽음 기록"
-- L["%s's death log"] = ""
-- L["Player's deaths"] = ""
L["%s dies"] = "%s 죽음"
L["buff"] = "버프"
L["debuff"] = "디버프"
L["Spell details"] = "주문 세부"
-- L["Spell"] = ""
-- L["Amount"] = ""
-- L["Source"] = ""
L["Change"] = "변경"
L["Time"] = "시각"
L["Survivability"] = "활착"
L["Events Amount"] = "이벤트 금액"
L["Set the amount of events the death log should record."] = "사망 기록에 기록해야하는 이벤트의 양을 설정합니다."
L["Minimum Healing"] = "최소 치유"
L["Ignore heal events that are below this threshold."] = "이 임계 값보다 낮은 치유 이벤트는 무시하십시오."
L["Announce Deaths"] = "사망 발표"
L["Announces information about the last hit the player took before they died."] = "플레이어가 죽기 전에 마지막으로 한 명중을 알려줍니다."
L["Alternative Display"] = "대체 디스플레이"
L["If a player dies multiple times, each death will be displayed as a separate bar."] = "플레이어가 여러 번 사망하면 각 사망은 별도의 막대로 표시됩니다."
-- activity module
L["Activity"] = "활동"
L["Activity per Target"] = "대상당 활동"
L["%s's activity"] = "%s의 활동"
-- dispels module lines --
-- L["Dispel Spells"] = ""
-- L["%s's dispelled spells"] = ""
-- interrupts module lines --
-- L["Interrupt Spells"] = ""
-- L["%s's interrupted spells"] = ""
L["%s interrupted!"] = "%s 차단!"
-- Power gained module --
L["Resources"] = "자원"
L["Mana Restored"] = "마나 회복"
L["Rage Generated"] = "분노 생성"
L["Energy Generated"] = "기력 생성"
L["Runic Power Generated"] = "룬 마력 생성"
L["Other Resources"] = "기타 자원"
L["Combo Points"] = "연계 점수"
L["Runes"] = "룬"
L["Soul Shards"] = "영혼의 조각"
L["Astral Power"] = "천공의 힘"
L["Holy Power"] = "신성한 힘"
L["Maelstrom"] = "소용돌이"
L["Chi"] = "기"
L["Insanity"] = "광기"
L["Arcane Charges"] = "비전 충전물"
L["Fury"] = "격노"
L["Pain"] = "고통"
-- Parry module lines --
L["Parry-Haste"] = "패리-가속"
L["%s parried %s (%s)"] = "%s 패리 %s (%s)"
-- Potions module lines --
-- L["Potions"] = ""
-- L["%s's potions"] = ""
-- L["Pre-potion"] = "Pre-potion"
-- L["pre-potion: %s"] = "pre-potion: %s"
-- L["Prints pre-potion after the end of the combat."] = ""
-- healthstone --
L["Healthstones"] = "생명석"
-- resurrect module lines --
-- L["Resurrects"] = ""
-- nickname module lines --
L["Nickname"] = "별명"
L["Nicknames are sent to group members and Skada can use them instead of your character name."] = "별명은 길드원들에게 보내지며 Skada에서 캐릭터 이름대신 사용합니다."
L["Set a nickname for you."] = "당신의 별명을 정합니다."
-- L["Nickname isn't a valid string."] = ""
-- L["Your nickname is too long, max of 12 characters is allowed."] = ""
-- L["Only letters and two spaces are allowed."] = ""
-- L["Your nickname contains a forbidden word."] = ""
-- L["You can't use the same letter three times consecutively, two spaces consecutively or more then two spaces."] = ""
L["Ignore Nicknames"] = "별명 무시"
L["When enabled, nicknames set by Skada users are ignored."] = "활성화되면 다른 Skada 사용자가 설정 한 별명은 무시됩니다."
-- L["Name display"] = ""
-- L["Choose how names are shown on your bars."] = ""
L["Clear Cache"] = "캐시 지우기"
L["Are you sure you want clear cached nicknames?"] = "캐시 된 별명을 지우시겠습니까?"
-- overkill module lines --
L["Overkill"] = "과도한 손상"
-- tweaks module lines --
L["Improvement"] = "개선"
L["Tweaks"] = "개선"
L["First hit"] = "첫 번째 히트"
L["\124cffffff00First Hit\124r: %s from %s"] = "\124cffffff00첫 번째 히트\124r: %2$s의 %1$s"
L["\124cffffbb00First Hit\124r: *?*"] = "\124cffffff00첫 번째 히트\124r: *?*"
L["\124cffffbb00Boss First Target\124r: %s"] = "\124cffffbb00보스의 첫 번째 타겟\124r: %s"
-- L["opt_tweaks_firsthit_desc"] = ""
-- L["Filter DPS meters Spam"] = ""
-- L["opt_tweaks_spamage_desc"] = ""
L["Reported by: %s"] = "%s의 보고"
-- L["Smart Stop"] = ""
-- L["opt_tweaks_smarthalt_desc"] = ""
-- L["Duration"] = ""
-- L["opt_tweaks_smartwait_desc"] = ""
L["Modes Icons"] = "모드 아이콘"
L["Show modes icons on bars and menus."] = "바와 메뉴에 모드 아이콘을 표시합니다."
L["Enable this if you want to ignore \124cffffbb00%s\124r."] = "\124cffffbb00%s\124r.를 무시하려면 이 옵션을 활성화하십시오."
L["Custom Colors"] = "맞춤 색상"
L["Arena Teams"] = "투기장 팀"
L["Are you sure you want to reset all colors?"] = "모든 색상을 재설정하시겠습니까?"
L["Announce %s"] = "발표: %s"
L["Announces how long it took to apply %d stacks of %s and announces when it drops."] = "%d 스택(%s)을 적용하는 데 걸린 시간을 알리고 언제 드롭되는지 알립니다."
L["%s dropped from %s!"] = "%s 는 %s 에 만료!"
L["%s stacks of %s applied on %s in %s sec!"] = "%4$s초 만에 %3$s에 %2$s %1$s중첩 적용!"
L["My Spells"] = "내 주문"
-- total data options
L["Total Segment"] = "총 세그먼트" -- needs review
L["All Segments"] = "모든 세그먼트" -- needs review
L["Raid Bosses"] = "레이드 보스" -- needs review
L["Raid Trash"] = "레이드 휴지통" -- needs review
L["Dungeon Bosses"] = "던전 보스" -- needs review
L["Dungeon Trash"] = "던전 휴지통" -- needs review
L["opt_tweaks_total_all_desc"] = "모든 세그먼트는 전체 세그먼트의 데이터에 추가됩니다." -- needs review
L["opt_tweaks_total_fmt_desc"] = "전체 세그먼트의 데이터에 %s가 있는 세그먼트가 추가됩니다." -- needs review
L["Detailed total segment"] = "상세 합계"
-- L["opt_tweaks_total_full_desc"] = "When enabled, Skada will record everything to the total segment, instead of total numbers (record spell details, their targets as their sources)."
-- arena
L["Gold Team"] = "금색팀"
L["Green Team"] = "녹색팀"
L["Color for %s."] = "%s의 색상입니다."
-- notifications
L["Notifications"] = "알림"
L["opt_toast_desc"] = "해당되는 경우 채팅 창 메시지 대신 시각적 알림을 사용합니다."
L["Test Notifications"] = "테스트 알림"
-- comparison module
L["Comparison"] = "비교"
L["%s vs %s: %s"] = "%s 대 %s: %s"
L["%s vs %s: Spells"] = "%s 대 %s: 스펠스"
L["%s vs %s: Targets"] = "%s 대 %s: 대상"
-- spellcast module
L["Casts"] = "시전"
L["%s's spells"] = "%s 스펠스"
L["%s's spells on %s"] = "%s의 %s 주문"
L["Spells on %s"] = "%s의 주문"
-- about
L["Author"] = "저작자"
L["Credits"] = "크레딧"
L["Date"] = "날짜"
L["License"] = "라이센스"
L["Version"] = "버전"
L["Website"] = "웹 사이트"
-- some bosses entries
L["World Boss"] = "야외 우두머리"
L["Auriaya"] = "아우리아야"
L["Blood Prince Council"] = "피의 공작 의회"
L["Faction Champions"] = "진영 대표 용사"
L["Hogger"] = "들창코"
L["Icecrown Gunship Battle"] = "얼음왕관 비행포격선 전투"
L["Kologarn"] = "콜로간"
L["Mimiron"] = "미미론"
L["Sapphiron"] = "사피론"
L["The Four Horsemen"] = "4인의 기병대"
L["The Iron Council"] = "무쇠 평의회"
L["The Northrend Beasts"] = "노스렌드 야수"
L["Thorim"] = "토림"
L["Twin Val'kyr"] = "발키르 쌍둥이"
L["Valithria Dreamwalker"] = "발리스리아 드림워커"
L["Yogg-Saron"] = "요그사론"
