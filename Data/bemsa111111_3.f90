module bemsa
  implicit none
  integer, parameter :: wp  = kind(1.0D0)
  
  private
  public :: bemsav, emsav
contains
  function emsav(x,c) result(v)
    implicit none
    real(wp),dimension(1:15)::x
    real(wp),dimension(0:815)::c
    real(wp)::v
    ! ::::::::::::::::::::
    real(wp),dimension(0:815)::p
    
    call bemsav(x,p)
    v = dot_product(p,c)
    
    return
  end function emsav
  
  subroutine bemsav(x,p)
    implicit none
    real(wp),dimension(1:15),intent(in)::x
    real(wp),dimension(0:815),intent(out)::p
    ! ::::::::::::::::::::
    real(wp),dimension(0:15)::m
    
    call evmono(x,m)
    call evpoly(m,p)
    
    return
  end subroutine bemsav
  
  subroutine evmono(x,m)
    implicit none
    real(wp),dimension(1:15),intent(in)::x
    real(wp),dimension(0:15),intent(out)::m
    !::::::::::::::::::::
    
    m(0) = 1.0D0
    m(1) = x(15)
    m(2) = x(14)
    m(3) = x(13)
    m(4) = x(12)
    m(5) = x(11)
    m(6) = x(10)
    m(7) = x(9)
    m(8) = x(8)
    m(9) = x(7)
    m(10) = x(6)
    m(11) = x(5)
    m(12) = x(4)
    m(13) = x(3)
    m(14) = x(2)
    m(15) = x(1)

    return
  end subroutine evmono

  subroutine evpoly(m,p)
    implicit none
    real(wp),dimension(0:15),intent(in)::m
    real(wp),dimension(0:815),intent(out)::p
    !::::::::::::::::::::
    
    p(0) = m(0)
    p(1) = m(1)
    p(2) = m(2)
    p(3) = m(3)
    p(4) = m(4)
    p(5) = m(5)
    p(6) = m(6)
    p(7) = m(7)
    p(8) = m(8)
    p(9) = m(9)
    p(10) = m(10)
    p(11) = m(11)
    p(12) = m(12)
    p(13) = m(13)
    p(14) = m(14)
    p(15) = m(15)
    p(16) = p(1)*p(2)
    p(17) = p(1)*p(3)
    p(18) = p(2)*p(3)
    p(19) = p(1)*p(4)
    p(20) = p(2)*p(4)
    p(21) = p(3)*p(4)
    p(22) = p(1)*p(5)
    p(23) = p(2)*p(5)
    p(24) = p(3)*p(5)
    p(25) = p(4)*p(5)
    p(26) = p(1)*p(6)
    p(27) = p(2)*p(6)
    p(28) = p(3)*p(6)
    p(29) = p(4)*p(6)
    p(30) = p(5)*p(6)
    p(31) = p(1)*p(7)
    p(32) = p(2)*p(7)
    p(33) = p(3)*p(7)
    p(34) = p(4)*p(7)
    p(35) = p(5)*p(7)
    p(36) = p(6)*p(7)
    p(37) = p(1)*p(8)
    p(38) = p(2)*p(8)
    p(39) = p(3)*p(8)
    p(40) = p(4)*p(8)
    p(41) = p(5)*p(8)
    p(42) = p(6)*p(8)
    p(43) = p(7)*p(8)
    p(44) = p(1)*p(9)
    p(45) = p(2)*p(9)
    p(46) = p(3)*p(9)
    p(47) = p(4)*p(9)
    p(48) = p(5)*p(9)
    p(49) = p(6)*p(9)
    p(50) = p(7)*p(9)
    p(51) = p(8)*p(9)
    p(52) = p(1)*p(10)
    p(53) = p(2)*p(10)
    p(54) = p(3)*p(10)
    p(55) = p(4)*p(10)
    p(56) = p(5)*p(10)
    p(57) = p(6)*p(10)
    p(58) = p(7)*p(10)
    p(59) = p(8)*p(10)
    p(60) = p(9)*p(10)
    p(61) = p(1)*p(11)
    p(62) = p(2)*p(11)
    p(63) = p(3)*p(11)
    p(64) = p(4)*p(11)
    p(65) = p(5)*p(11)
    p(66) = p(6)*p(11)
    p(67) = p(7)*p(11)
    p(68) = p(8)*p(11)
    p(69) = p(9)*p(11)
    p(70) = p(10)*p(11)
    p(71) = p(1)*p(12)
    p(72) = p(2)*p(12)
    p(73) = p(3)*p(12)
    p(74) = p(4)*p(12)
    p(75) = p(5)*p(12)
    p(76) = p(6)*p(12)
    p(77) = p(7)*p(12)
    p(78) = p(8)*p(12)
    p(79) = p(9)*p(12)
    p(80) = p(10)*p(12)
    p(81) = p(11)*p(12)
    p(82) = p(1)*p(13)
    p(83) = p(2)*p(13)
    p(84) = p(3)*p(13)
    p(85) = p(4)*p(13)
    p(86) = p(5)*p(13)
    p(87) = p(6)*p(13)
    p(88) = p(7)*p(13)
    p(89) = p(8)*p(13)
    p(90) = p(9)*p(13)
    p(91) = p(10)*p(13)
    p(92) = p(11)*p(13)
    p(93) = p(12)*p(13)
    p(94) = p(1)*p(14)
    p(95) = p(2)*p(14)
    p(96) = p(3)*p(14)
    p(97) = p(4)*p(14)
    p(98) = p(5)*p(14)
    p(99) = p(6)*p(14)
    p(100) = p(7)*p(14)
    p(101) = p(8)*p(14)
    p(102) = p(9)*p(14)
    p(103) = p(10)*p(14)
    p(104) = p(11)*p(14)
    p(105) = p(12)*p(14)
    p(106) = p(13)*p(14)
    p(107) = p(1)*p(15)
    p(108) = p(2)*p(15)
    p(109) = p(3)*p(15)
    p(110) = p(4)*p(15)
    p(111) = p(5)*p(15)
    p(112) = p(6)*p(15)
    p(113) = p(7)*p(15)
    p(114) = p(8)*p(15)
    p(115) = p(9)*p(15)
    p(116) = p(10)*p(15)
    p(117) = p(11)*p(15)
    p(118) = p(12)*p(15)
    p(119) = p(13)*p(15)
    p(120) = p(14)*p(15)
    p(121) = p(1)*p(1)
    p(122) = p(2)*p(2)
    p(123) = p(3)*p(3)
    p(124) = p(4)*p(4)
    p(125) = p(5)*p(5)
    p(126) = p(6)*p(6)
    p(127) = p(7)*p(7)
    p(128) = p(8)*p(8)
    p(129) = p(9)*p(9)
    p(130) = p(10)*p(10)
    p(131) = p(11)*p(11)
    p(132) = p(12)*p(12)
    p(133) = p(13)*p(13)
    p(134) = p(14)*p(14)
    p(135) = p(15)*p(15)
    p(136) = p(1)*p(18)
    p(137) = p(1)*p(20)
    p(138) = p(1)*p(21)
    p(139) = p(2)*p(21)
    p(140) = p(1)*p(23)
    p(141) = p(1)*p(24)
    p(142) = p(2)*p(24)
    p(143) = p(1)*p(25)
    p(144) = p(2)*p(25)
    p(145) = p(3)*p(25)
    p(146) = p(1)*p(27)
    p(147) = p(1)*p(28)
    p(148) = p(2)*p(28)
    p(149) = p(1)*p(29)
    p(150) = p(2)*p(29)
    p(151) = p(3)*p(29)
    p(152) = p(1)*p(30)
    p(153) = p(2)*p(30)
    p(154) = p(3)*p(30)
    p(155) = p(4)*p(30)
    p(156) = p(1)*p(32)
    p(157) = p(1)*p(33)
    p(158) = p(2)*p(33)
    p(159) = p(1)*p(34)
    p(160) = p(2)*p(34)
    p(161) = p(3)*p(34)
    p(162) = p(1)*p(35)
    p(163) = p(2)*p(35)
    p(164) = p(3)*p(35)
    p(165) = p(4)*p(35)
    p(166) = p(1)*p(36)
    p(167) = p(2)*p(36)
    p(168) = p(3)*p(36)
    p(169) = p(4)*p(36)
    p(170) = p(5)*p(36)
    p(171) = p(1)*p(38)
    p(172) = p(1)*p(39)
    p(173) = p(2)*p(39)
    p(174) = p(1)*p(40)
    p(175) = p(2)*p(40)
    p(176) = p(3)*p(40)
    p(177) = p(1)*p(41)
    p(178) = p(2)*p(41)
    p(179) = p(3)*p(41)
    p(180) = p(4)*p(41)
    p(181) = p(1)*p(42)
    p(182) = p(2)*p(42)
    p(183) = p(3)*p(42)
    p(184) = p(4)*p(42)
    p(185) = p(5)*p(42)
    p(186) = p(1)*p(43)
    p(187) = p(2)*p(43)
    p(188) = p(3)*p(43)
    p(189) = p(4)*p(43)
    p(190) = p(5)*p(43)
    p(191) = p(6)*p(43)
    p(192) = p(1)*p(45)
    p(193) = p(1)*p(46)
    p(194) = p(2)*p(46)
    p(195) = p(1)*p(47)
    p(196) = p(2)*p(47)
    p(197) = p(3)*p(47)
    p(198) = p(1)*p(48)
    p(199) = p(2)*p(48)
    p(200) = p(3)*p(48)
    p(201) = p(4)*p(48)
    p(202) = p(1)*p(49)
    p(203) = p(2)*p(49)
    p(204) = p(3)*p(49)
    p(205) = p(4)*p(49)
    p(206) = p(5)*p(49)
    p(207) = p(1)*p(50)
    p(208) = p(2)*p(50)
    p(209) = p(3)*p(50)
    p(210) = p(4)*p(50)
    p(211) = p(5)*p(50)
    p(212) = p(6)*p(50)
    p(213) = p(1)*p(51)
    p(214) = p(2)*p(51)
    p(215) = p(3)*p(51)
    p(216) = p(4)*p(51)
    p(217) = p(5)*p(51)
    p(218) = p(6)*p(51)
    p(219) = p(7)*p(51)
    p(220) = p(1)*p(53)
    p(221) = p(1)*p(54)
    p(222) = p(2)*p(54)
    p(223) = p(1)*p(55)
    p(224) = p(2)*p(55)
    p(225) = p(3)*p(55)
    p(226) = p(1)*p(56)
    p(227) = p(2)*p(56)
    p(228) = p(3)*p(56)
    p(229) = p(4)*p(56)
    p(230) = p(1)*p(57)
    p(231) = p(2)*p(57)
    p(232) = p(3)*p(57)
    p(233) = p(4)*p(57)
    p(234) = p(5)*p(57)
    p(235) = p(1)*p(58)
    p(236) = p(2)*p(58)
    p(237) = p(3)*p(58)
    p(238) = p(4)*p(58)
    p(239) = p(5)*p(58)
    p(240) = p(6)*p(58)
    p(241) = p(1)*p(59)
    p(242) = p(2)*p(59)
    p(243) = p(3)*p(59)
    p(244) = p(4)*p(59)
    p(245) = p(5)*p(59)
    p(246) = p(6)*p(59)
    p(247) = p(7)*p(59)
    p(248) = p(1)*p(60)
    p(249) = p(2)*p(60)
    p(250) = p(3)*p(60)
    p(251) = p(4)*p(60)
    p(252) = p(5)*p(60)
    p(253) = p(6)*p(60)
    p(254) = p(7)*p(60)
    p(255) = p(8)*p(60)
    p(256) = p(1)*p(62)
    p(257) = p(1)*p(63)
    p(258) = p(2)*p(63)
    p(259) = p(1)*p(64)
    p(260) = p(2)*p(64)
    p(261) = p(3)*p(64)
    p(262) = p(1)*p(65)
    p(263) = p(2)*p(65)
    p(264) = p(3)*p(65)
    p(265) = p(4)*p(65)
    p(266) = p(1)*p(66)
    p(267) = p(2)*p(66)
    p(268) = p(3)*p(66)
    p(269) = p(4)*p(66)
    p(270) = p(5)*p(66)
    p(271) = p(1)*p(67)
    p(272) = p(2)*p(67)
    p(273) = p(3)*p(67)
    p(274) = p(4)*p(67)
    p(275) = p(5)*p(67)
    p(276) = p(6)*p(67)
    p(277) = p(1)*p(68)
    p(278) = p(2)*p(68)
    p(279) = p(3)*p(68)
    p(280) = p(4)*p(68)
    p(281) = p(5)*p(68)
    p(282) = p(6)*p(68)
    p(283) = p(7)*p(68)
    p(284) = p(1)*p(69)
    p(285) = p(2)*p(69)
    p(286) = p(3)*p(69)
    p(287) = p(4)*p(69)
    p(288) = p(5)*p(69)
    p(289) = p(6)*p(69)
    p(290) = p(7)*p(69)
    p(291) = p(8)*p(69)
    p(292) = p(1)*p(70)
    p(293) = p(2)*p(70)
    p(294) = p(3)*p(70)
    p(295) = p(4)*p(70)
    p(296) = p(5)*p(70)
    p(297) = p(6)*p(70)
    p(298) = p(7)*p(70)
    p(299) = p(8)*p(70)
    p(300) = p(9)*p(70)
    p(301) = p(1)*p(72)
    p(302) = p(1)*p(73)
    p(303) = p(2)*p(73)
    p(304) = p(1)*p(74)
    p(305) = p(2)*p(74)
    p(306) = p(3)*p(74)
    p(307) = p(1)*p(75)
    p(308) = p(2)*p(75)
    p(309) = p(3)*p(75)
    p(310) = p(4)*p(75)
    p(311) = p(1)*p(76)
    p(312) = p(2)*p(76)
    p(313) = p(3)*p(76)
    p(314) = p(4)*p(76)
    p(315) = p(5)*p(76)
    p(316) = p(1)*p(77)
    p(317) = p(2)*p(77)
    p(318) = p(3)*p(77)
    p(319) = p(4)*p(77)
    p(320) = p(5)*p(77)
    p(321) = p(6)*p(77)
    p(322) = p(1)*p(78)
    p(323) = p(2)*p(78)
    p(324) = p(3)*p(78)
    p(325) = p(4)*p(78)
    p(326) = p(5)*p(78)
    p(327) = p(6)*p(78)
    p(328) = p(7)*p(78)
    p(329) = p(1)*p(79)
    p(330) = p(2)*p(79)
    p(331) = p(3)*p(79)
    p(332) = p(4)*p(79)
    p(333) = p(5)*p(79)
    p(334) = p(6)*p(79)
    p(335) = p(7)*p(79)
    p(336) = p(8)*p(79)
    p(337) = p(1)*p(80)
    p(338) = p(2)*p(80)
    p(339) = p(3)*p(80)
    p(340) = p(4)*p(80)
    p(341) = p(5)*p(80)
    p(342) = p(6)*p(80)
    p(343) = p(7)*p(80)
    p(344) = p(8)*p(80)
    p(345) = p(9)*p(80)
    p(346) = p(1)*p(81)
    p(347) = p(2)*p(81)
    p(348) = p(3)*p(81)
    p(349) = p(4)*p(81)
    p(350) = p(5)*p(81)
    p(351) = p(6)*p(81)
    p(352) = p(7)*p(81)
    p(353) = p(8)*p(81)
    p(354) = p(9)*p(81)
    p(355) = p(10)*p(81)
    p(356) = p(1)*p(83)
    p(357) = p(1)*p(84)
    p(358) = p(2)*p(84)
    p(359) = p(1)*p(85)
    p(360) = p(2)*p(85)
    p(361) = p(3)*p(85)
    p(362) = p(1)*p(86)
    p(363) = p(2)*p(86)
    p(364) = p(3)*p(86)
    p(365) = p(4)*p(86)
    p(366) = p(1)*p(87)
    p(367) = p(2)*p(87)
    p(368) = p(3)*p(87)
    p(369) = p(4)*p(87)
    p(370) = p(5)*p(87)
    p(371) = p(1)*p(88)
    p(372) = p(2)*p(88)
    p(373) = p(3)*p(88)
    p(374) = p(4)*p(88)
    p(375) = p(5)*p(88)
    p(376) = p(6)*p(88)
    p(377) = p(1)*p(89)
    p(378) = p(2)*p(89)
    p(379) = p(3)*p(89)
    p(380) = p(4)*p(89)
    p(381) = p(5)*p(89)
    p(382) = p(6)*p(89)
    p(383) = p(7)*p(89)
    p(384) = p(1)*p(90)
    p(385) = p(2)*p(90)
    p(386) = p(3)*p(90)
    p(387) = p(4)*p(90)
    p(388) = p(5)*p(90)
    p(389) = p(6)*p(90)
    p(390) = p(7)*p(90)
    p(391) = p(8)*p(90)
    p(392) = p(1)*p(91)
    p(393) = p(2)*p(91)
    p(394) = p(3)*p(91)
    p(395) = p(4)*p(91)
    p(396) = p(5)*p(91)
    p(397) = p(6)*p(91)
    p(398) = p(7)*p(91)
    p(399) = p(8)*p(91)
    p(400) = p(9)*p(91)
    p(401) = p(1)*p(92)
    p(402) = p(2)*p(92)
    p(403) = p(3)*p(92)
    p(404) = p(4)*p(92)
    p(405) = p(5)*p(92)
    p(406) = p(6)*p(92)
    p(407) = p(7)*p(92)
    p(408) = p(8)*p(92)
    p(409) = p(9)*p(92)
    p(410) = p(10)*p(92)
    p(411) = p(1)*p(93)
    p(412) = p(2)*p(93)
    p(413) = p(3)*p(93)
    p(414) = p(4)*p(93)
    p(415) = p(5)*p(93)
    p(416) = p(6)*p(93)
    p(417) = p(7)*p(93)
    p(418) = p(8)*p(93)
    p(419) = p(9)*p(93)
    p(420) = p(10)*p(93)
    p(421) = p(11)*p(93)
    p(422) = p(1)*p(95)
    p(423) = p(1)*p(96)
    p(424) = p(2)*p(96)
    p(425) = p(1)*p(97)
    p(426) = p(2)*p(97)
    p(427) = p(3)*p(97)
    p(428) = p(1)*p(98)
    p(429) = p(2)*p(98)
    p(430) = p(3)*p(98)
    p(431) = p(4)*p(98)
    p(432) = p(1)*p(99)
    p(433) = p(2)*p(99)
    p(434) = p(3)*p(99)
    p(435) = p(4)*p(99)
    p(436) = p(5)*p(99)
    p(437) = p(1)*p(100)
    p(438) = p(2)*p(100)
    p(439) = p(3)*p(100)
    p(440) = p(4)*p(100)
    p(441) = p(5)*p(100)
    p(442) = p(6)*p(100)
    p(443) = p(1)*p(101)
    p(444) = p(2)*p(101)
    p(445) = p(3)*p(101)
    p(446) = p(4)*p(101)
    p(447) = p(5)*p(101)
    p(448) = p(6)*p(101)
    p(449) = p(7)*p(101)
    p(450) = p(1)*p(102)
    p(451) = p(2)*p(102)
    p(452) = p(3)*p(102)
    p(453) = p(4)*p(102)
    p(454) = p(5)*p(102)
    p(455) = p(6)*p(102)
    p(456) = p(7)*p(102)
    p(457) = p(8)*p(102)
    p(458) = p(1)*p(103)
    p(459) = p(2)*p(103)
    p(460) = p(3)*p(103)
    p(461) = p(4)*p(103)
    p(462) = p(5)*p(103)
    p(463) = p(6)*p(103)
    p(464) = p(7)*p(103)
    p(465) = p(8)*p(103)
    p(466) = p(9)*p(103)
    p(467) = p(1)*p(104)
    p(468) = p(2)*p(104)
    p(469) = p(3)*p(104)
    p(470) = p(4)*p(104)
    p(471) = p(5)*p(104)
    p(472) = p(6)*p(104)
    p(473) = p(7)*p(104)
    p(474) = p(8)*p(104)
    p(475) = p(9)*p(104)
    p(476) = p(10)*p(104)
    p(477) = p(1)*p(105)
    p(478) = p(2)*p(105)
    p(479) = p(3)*p(105)
    p(480) = p(4)*p(105)
    p(481) = p(5)*p(105)
    p(482) = p(6)*p(105)
    p(483) = p(7)*p(105)
    p(484) = p(8)*p(105)
    p(485) = p(9)*p(105)
    p(486) = p(10)*p(105)
    p(487) = p(11)*p(105)
    p(488) = p(1)*p(106)
    p(489) = p(2)*p(106)
    p(490) = p(3)*p(106)
    p(491) = p(4)*p(106)
    p(492) = p(5)*p(106)
    p(493) = p(6)*p(106)
    p(494) = p(7)*p(106)
    p(495) = p(8)*p(106)
    p(496) = p(9)*p(106)
    p(497) = p(10)*p(106)
    p(498) = p(11)*p(106)
    p(499) = p(12)*p(106)
    p(500) = p(1)*p(108)
    p(501) = p(1)*p(109)
    p(502) = p(2)*p(109)
    p(503) = p(1)*p(110)
    p(504) = p(2)*p(110)
    p(505) = p(3)*p(110)
    p(506) = p(1)*p(111)
    p(507) = p(2)*p(111)
    p(508) = p(3)*p(111)
    p(509) = p(4)*p(111)
    p(510) = p(1)*p(112)
    p(511) = p(2)*p(112)
    p(512) = p(3)*p(112)
    p(513) = p(4)*p(112)
    p(514) = p(5)*p(112)
    p(515) = p(1)*p(113)
    p(516) = p(2)*p(113)
    p(517) = p(3)*p(113)
    p(518) = p(4)*p(113)
    p(519) = p(5)*p(113)
    p(520) = p(6)*p(113)
    p(521) = p(1)*p(114)
    p(522) = p(2)*p(114)
    p(523) = p(3)*p(114)
    p(524) = p(4)*p(114)
    p(525) = p(5)*p(114)
    p(526) = p(6)*p(114)
    p(527) = p(7)*p(114)
    p(528) = p(1)*p(115)
    p(529) = p(2)*p(115)
    p(530) = p(3)*p(115)
    p(531) = p(4)*p(115)
    p(532) = p(5)*p(115)
    p(533) = p(6)*p(115)
    p(534) = p(7)*p(115)
    p(535) = p(8)*p(115)
    p(536) = p(1)*p(116)
    p(537) = p(2)*p(116)
    p(538) = p(3)*p(116)
    p(539) = p(4)*p(116)
    p(540) = p(5)*p(116)
    p(541) = p(6)*p(116)
    p(542) = p(7)*p(116)
    p(543) = p(8)*p(116)
    p(544) = p(9)*p(116)
    p(545) = p(1)*p(117)
    p(546) = p(2)*p(117)
    p(547) = p(3)*p(117)
    p(548) = p(4)*p(117)
    p(549) = p(5)*p(117)
    p(550) = p(6)*p(117)
    p(551) = p(7)*p(117)
    p(552) = p(8)*p(117)
    p(553) = p(9)*p(117)
    p(554) = p(10)*p(117)
    p(555) = p(1)*p(118)
    p(556) = p(2)*p(118)
    p(557) = p(3)*p(118)
    p(558) = p(4)*p(118)
    p(559) = p(5)*p(118)
    p(560) = p(6)*p(118)
    p(561) = p(7)*p(118)
    p(562) = p(8)*p(118)
    p(563) = p(9)*p(118)
    p(564) = p(10)*p(118)
    p(565) = p(11)*p(118)
    p(566) = p(1)*p(119)
    p(567) = p(2)*p(119)
    p(568) = p(3)*p(119)
    p(569) = p(4)*p(119)
    p(570) = p(5)*p(119)
    p(571) = p(6)*p(119)
    p(572) = p(7)*p(119)
    p(573) = p(8)*p(119)
    p(574) = p(9)*p(119)
    p(575) = p(10)*p(119)
    p(576) = p(11)*p(119)
    p(577) = p(12)*p(119)
    p(578) = p(1)*p(120)
    p(579) = p(2)*p(120)
    p(580) = p(3)*p(120)
    p(581) = p(4)*p(120)
    p(582) = p(5)*p(120)
    p(583) = p(6)*p(120)
    p(584) = p(7)*p(120)
    p(585) = p(8)*p(120)
    p(586) = p(9)*p(120)
    p(587) = p(10)*p(120)
    p(588) = p(11)*p(120)
    p(589) = p(12)*p(120)
    p(590) = p(13)*p(120)
    p(591) = p(1)*p(16)
    p(592) = p(1)*p(122)
    p(593) = p(1)*p(17)
    p(594) = p(2)*p(18)
    p(595) = p(1)*p(123)
    p(596) = p(2)*p(123)
    p(597) = p(1)*p(19)
    p(598) = p(2)*p(20)
    p(599) = p(3)*p(21)
    p(600) = p(1)*p(124)
    p(601) = p(2)*p(124)
    p(602) = p(3)*p(124)
    p(603) = p(1)*p(22)
    p(604) = p(2)*p(23)
    p(605) = p(3)*p(24)
    p(606) = p(4)*p(25)
    p(607) = p(1)*p(125)
    p(608) = p(2)*p(125)
    p(609) = p(3)*p(125)
    p(610) = p(4)*p(125)
    p(611) = p(1)*p(26)
    p(612) = p(2)*p(27)
    p(613) = p(3)*p(28)
    p(614) = p(4)*p(29)
    p(615) = p(5)*p(30)
    p(616) = p(1)*p(126)
    p(617) = p(2)*p(126)
    p(618) = p(3)*p(126)
    p(619) = p(4)*p(126)
    p(620) = p(5)*p(126)
    p(621) = p(1)*p(31)
    p(622) = p(2)*p(32)
    p(623) = p(3)*p(33)
    p(624) = p(4)*p(34)
    p(625) = p(5)*p(35)
    p(626) = p(6)*p(36)
    p(627) = p(1)*p(127)
    p(628) = p(2)*p(127)
    p(629) = p(3)*p(127)
    p(630) = p(4)*p(127)
    p(631) = p(5)*p(127)
    p(632) = p(6)*p(127)
    p(633) = p(1)*p(37)
    p(634) = p(2)*p(38)
    p(635) = p(3)*p(39)
    p(636) = p(4)*p(40)
    p(637) = p(5)*p(41)
    p(638) = p(6)*p(42)
    p(639) = p(7)*p(43)
    p(640) = p(1)*p(128)
    p(641) = p(2)*p(128)
    p(642) = p(3)*p(128)
    p(643) = p(4)*p(128)
    p(644) = p(5)*p(128)
    p(645) = p(6)*p(128)
    p(646) = p(7)*p(128)
    p(647) = p(1)*p(44)
    p(648) = p(2)*p(45)
    p(649) = p(3)*p(46)
    p(650) = p(4)*p(47)
    p(651) = p(5)*p(48)
    p(652) = p(6)*p(49)
    p(653) = p(7)*p(50)
    p(654) = p(8)*p(51)
    p(655) = p(1)*p(129)
    p(656) = p(2)*p(129)
    p(657) = p(3)*p(129)
    p(658) = p(4)*p(129)
    p(659) = p(5)*p(129)
    p(660) = p(6)*p(129)
    p(661) = p(7)*p(129)
    p(662) = p(8)*p(129)
    p(663) = p(1)*p(52)
    p(664) = p(2)*p(53)
    p(665) = p(3)*p(54)
    p(666) = p(4)*p(55)
    p(667) = p(5)*p(56)
    p(668) = p(6)*p(57)
    p(669) = p(7)*p(58)
    p(670) = p(8)*p(59)
    p(671) = p(9)*p(60)
    p(672) = p(1)*p(130)
    p(673) = p(2)*p(130)
    p(674) = p(3)*p(130)
    p(675) = p(4)*p(130)
    p(676) = p(5)*p(130)
    p(677) = p(6)*p(130)
    p(678) = p(7)*p(130)
    p(679) = p(8)*p(130)
    p(680) = p(9)*p(130)
    p(681) = p(1)*p(61)
    p(682) = p(2)*p(62)
    p(683) = p(3)*p(63)
    p(684) = p(4)*p(64)
    p(685) = p(5)*p(65)
    p(686) = p(6)*p(66)
    p(687) = p(7)*p(67)
    p(688) = p(8)*p(68)
    p(689) = p(9)*p(69)
    p(690) = p(10)*p(70)
    p(691) = p(1)*p(131)
    p(692) = p(2)*p(131)
    p(693) = p(3)*p(131)
    p(694) = p(4)*p(131)
    p(695) = p(5)*p(131)
    p(696) = p(6)*p(131)
    p(697) = p(7)*p(131)
    p(698) = p(8)*p(131)
    p(699) = p(9)*p(131)
    p(700) = p(10)*p(131)
    p(701) = p(1)*p(71)
    p(702) = p(2)*p(72)
    p(703) = p(3)*p(73)
    p(704) = p(4)*p(74)
    p(705) = p(5)*p(75)
    p(706) = p(6)*p(76)
    p(707) = p(7)*p(77)
    p(708) = p(8)*p(78)
    p(709) = p(9)*p(79)
    p(710) = p(10)*p(80)
    p(711) = p(11)*p(81)
    p(712) = p(1)*p(132)
    p(713) = p(2)*p(132)
    p(714) = p(3)*p(132)
    p(715) = p(4)*p(132)
    p(716) = p(5)*p(132)
    p(717) = p(6)*p(132)
    p(718) = p(7)*p(132)
    p(719) = p(8)*p(132)
    p(720) = p(9)*p(132)
    p(721) = p(10)*p(132)
    p(722) = p(11)*p(132)
    p(723) = p(1)*p(82)
    p(724) = p(2)*p(83)
    p(725) = p(3)*p(84)
    p(726) = p(4)*p(85)
    p(727) = p(5)*p(86)
    p(728) = p(6)*p(87)
    p(729) = p(7)*p(88)
    p(730) = p(8)*p(89)
    p(731) = p(9)*p(90)
    p(732) = p(10)*p(91)
    p(733) = p(11)*p(92)
    p(734) = p(12)*p(93)
    p(735) = p(1)*p(133)
    p(736) = p(2)*p(133)
    p(737) = p(3)*p(133)
    p(738) = p(4)*p(133)
    p(739) = p(5)*p(133)
    p(740) = p(6)*p(133)
    p(741) = p(7)*p(133)
    p(742) = p(8)*p(133)
    p(743) = p(9)*p(133)
    p(744) = p(10)*p(133)
    p(745) = p(11)*p(133)
    p(746) = p(12)*p(133)
    p(747) = p(1)*p(94)
    p(748) = p(2)*p(95)
    p(749) = p(3)*p(96)
    p(750) = p(4)*p(97)
    p(751) = p(5)*p(98)
    p(752) = p(6)*p(99)
    p(753) = p(7)*p(100)
    p(754) = p(8)*p(101)
    p(755) = p(9)*p(102)
    p(756) = p(10)*p(103)
    p(757) = p(11)*p(104)
    p(758) = p(12)*p(105)
    p(759) = p(13)*p(106)
    p(760) = p(1)*p(134)
    p(761) = p(2)*p(134)
    p(762) = p(3)*p(134)
    p(763) = p(4)*p(134)
    p(764) = p(5)*p(134)
    p(765) = p(6)*p(134)
    p(766) = p(7)*p(134)
    p(767) = p(8)*p(134)
    p(768) = p(9)*p(134)
    p(769) = p(10)*p(134)
    p(770) = p(11)*p(134)
    p(771) = p(12)*p(134)
    p(772) = p(13)*p(134)
    p(773) = p(1)*p(107)
    p(774) = p(2)*p(108)
    p(775) = p(3)*p(109)
    p(776) = p(4)*p(110)
    p(777) = p(5)*p(111)
    p(778) = p(6)*p(112)
    p(779) = p(7)*p(113)
    p(780) = p(8)*p(114)
    p(781) = p(9)*p(115)
    p(782) = p(10)*p(116)
    p(783) = p(11)*p(117)
    p(784) = p(12)*p(118)
    p(785) = p(13)*p(119)
    p(786) = p(14)*p(120)
    p(787) = p(1)*p(135)
    p(788) = p(2)*p(135)
    p(789) = p(3)*p(135)
    p(790) = p(4)*p(135)
    p(791) = p(5)*p(135)
    p(792) = p(6)*p(135)
    p(793) = p(7)*p(135)
    p(794) = p(8)*p(135)
    p(795) = p(9)*p(135)
    p(796) = p(10)*p(135)
    p(797) = p(11)*p(135)
    p(798) = p(12)*p(135)
    p(799) = p(13)*p(135)
    p(800) = p(14)*p(135)
    p(801) = p(1)*p(121)
    p(802) = p(2)*p(122)
    p(803) = p(3)*p(123)
    p(804) = p(4)*p(124)
    p(805) = p(5)*p(125)
    p(806) = p(6)*p(126)
    p(807) = p(7)*p(127)
    p(808) = p(8)*p(128)
    p(809) = p(9)*p(129)
    p(810) = p(10)*p(130)
    p(811) = p(11)*p(131)
    p(812) = p(12)*p(132)
    p(813) = p(13)*p(133)
    p(814) = p(14)*p(134)
    p(815) = p(15)*p(135)

    return
  end subroutine evpoly

end module bemsa
