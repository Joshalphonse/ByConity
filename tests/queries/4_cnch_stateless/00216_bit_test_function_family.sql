select
	bitTest(0, 0) = 0,
	bitTest(1, 0) = 1,
	bitTest(1, 1) = 0,
	bitTest(0xff, 7) = 1;

select
	bitTestAll(0, 0) = 0,
	bitTestAll(1, 0) = 1,
	bitTestAll(1, 1) = 0,
	bitTestAll(0xff, 0) = 1,
	bitTestAll(0xff, 1) = 1,
	bitTestAll(0xff, 2) = 1,
	bitTestAll(0xff, 3) = 1,
	bitTestAll(0xff, 4) = 1,
	bitTestAll(0xff, 5) = 1,
	bitTestAll(0xff, 6) = 1,
	bitTestAll(0xff, 7) = 1,
	bitTestAll(0xff, 0, 1) = 1,
	bitTestAll(0xff, 2, 3) = 1,
	bitTestAll(0xff, 4, 5) = 1,
	bitTestAll(0xff, 6, 7) = 1,
	bitTestAll(0xff, 0, 1, 2, 3) = 1,
	bitTestAll(0xff, 4, 5, 6, 7) = 1,
	bitTestAll(0xff, 0, 1, 2, 3, 4, 5, 6, 7) = 1,
	bitTestAll(0x81, 0) = 1,
	bitTestAll(0x81, 1) = 0,
	bitTestAll(0x81, 2) = 0,
	bitTestAll(0x81, 3) = 0,
	bitTestAll(0x81, 4) = 0,
	bitTestAll(0x81, 5) = 0,
	bitTestAll(0x81, 6) = 0,
	bitTestAll(0x81, 7) = 1,
	bitTestAll(0x81, 0, 1) = 0,
	bitTestAll(0x81, 2, 3) = 0,
	bitTestAll(0x81, 4, 5) = 0,
	bitTestAll(0x81, 6, 7) = 0,
	bitTestAll(0x81, 0, 1, 2, 3) = 0,
	bitTestAll(0x81, 4, 5, 6, 7) = 0,
	bitTestAll(0x81, 0, 1, 2, 3, 4, 5, 6, 7) = 0,
	bitTestAll(0x81, 0, 7) = 1;

select
	bitTestAny(0, 0) = 0,
	bitTestAny(1, 0) = 1,
	bitTestAny(1, 1) = 0,
	bitTestAny(0xff, 0) = 1,
	bitTestAny(0xff, 1) = 1,
	bitTestAny(0xff, 2) = 1,
	bitTestAny(0xff, 3) = 1,
	bitTestAny(0xff, 4) = 1,
	bitTestAny(0xff, 5) = 1,
	bitTestAny(0xff, 6) = 1,
	bitTestAny(0xff, 7) = 1,
	bitTestAny(0xff, 0, 1) = 1,
	bitTestAny(0xff, 2, 3) = 1,
	bitTestAny(0xff, 4, 5) = 1,
	bitTestAny(0xff, 6, 7) = 1,
	bitTestAny(0xff, 0, 1, 2, 3) = 1,
	bitTestAny(0xff, 4, 5, 6, 7) = 1,
	bitTestAny(0xff, 0, 1, 2, 3, 4, 5, 6, 7) = 1,
	bitTestAny(0x81, 0) = 1,
	bitTestAny(0x81, 1) = 0,
	bitTestAny(0x81, 2) = 0,
	bitTestAny(0x81, 3) = 0,
	bitTestAny(0x81, 4) = 0,
	bitTestAny(0x81, 5) = 0,
	bitTestAny(0x81, 6) = 0,
	bitTestAny(0x81, 7) = 1,
	bitTestAny(0x81, 0, 1) = 1,
	bitTestAny(0x81, 2, 3) = 0,
	bitTestAny(0x81, 4, 5) = 0,
	bitTestAny(0x81, 6, 7) = 1,
	bitTestAny(0x81, 0, 1, 2, 3) = 1,
	bitTestAny(0x81, 4, 5, 6, 7) = 1,
	bitTestAny(0x81, 0, 1, 2, 3, 4, 5, 6, 7) = 1;

select number = bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitTest(number, 7), 1), bitTest(number, 6)), 1), bitTest(number, 5)), 1), bitTest(number, 4)), 1), bitTest(number, 3)), 1), bitTest(number, 2)), 1), bitTest(number, 1)), 1), bitTest(number, 0)),
    number as n,
	bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitTest(number, 7), 1), bitTest(number, 6)), 1), bitTest(number, 5)), 1), bitTest(number, 4)), 1), bitTest(number, 3)), 1), bitTest(number, 2)), 1), bitTest(number, 1)), 1), bitTest(number, 0)) as n_,
	bitTest(number, 7) as b7,
	bitTest(number, 6) as b6,
	bitTest(number, 5) as b5,
	bitTest(number, 4) as b4,
	bitTest(number, 3) as b3,
	bitTest(number, 2) as b2,
	bitTest(number, 1) as b1,
	bitTest(number, 0) as b0
from system.numbers limit 256;

select number = bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitTestAll(number, 7), 1), bitTestAll(number, 6)), 1), bitTestAll(number, 5)), 1), bitTestAll(number, 4)), 1), bitTestAll(number, 3)), 1), bitTestAll(number, 2)), 1), bitTestAll(number, 1)), 1), bitTestAll(number, 0)),
	number as n,
	bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitTestAll(number, 7), 1), bitTestAll(number, 6)), 1), bitTestAll(number, 5)), 1), bitTestAll(number, 4)), 1), bitTestAll(number, 3)), 1), bitTestAll(number, 2)), 1), bitTestAll(number, 1)), 1), bitTestAll(number, 0)) as n_,
	bitTestAll(number, 7) as b7,
	bitTestAll(number, 6) as b6,
	bitTestAll(number, 5) as b5,
	bitTestAll(number, 4) as b4,
	bitTestAll(number, 3) as b3,
	bitTestAll(number, 2) as b2,
	bitTestAll(number, 1) as b1,
	bitTestAll(number, 0) as b0
from system.numbers limit 256;

select number = bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitTestAny(number, 7), 1), bitTestAny(number, 6)), 1), bitTestAny(number, 5)), 1), bitTestAny(number, 4)), 1), bitTestAny(number, 3)), 1), bitTestAny(number, 2)), 1), bitTestAny(number, 1)), 1), bitTestAny(number, 0)),
	number as n,
	bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitOr(bitShiftLeft(bitTestAny(number, 7), 1), bitTestAny(number, 6)), 1), bitTestAny(number, 5)), 1), bitTestAny(number, 4)), 1), bitTestAny(number, 3)), 1), bitTestAny(number, 2)), 1), bitTestAny(number, 1)), 1), bitTestAny(number, 0)) as n_,
	bitTestAny(number, 7) as b7,
	bitTestAny(number, 6) as b6,
	bitTestAny(number, 5) as b5,
	bitTestAny(number, 4) as b4,
	bitTestAny(number, 3) as b3,
	bitTestAny(number, 2) as b2,
	bitTestAny(number, 1) as b1,
	bitTestAny(number, 0) as b0
from system.numbers limit 256;
