const trait = @import("std").meta.trait;
const debug = @import("std").debug;

const XValue = struct {
    x: i32,
};

const YValue = struct {
    y: i32,
};

pub fn printX(comptime T: type, s: T) void {
    // if (!trait.hasField("x")(T)) {
    //     unreachable;
    // }
    debug.print("{}\n", .{s.x});
}

pub fn main() void {
    const x = XValue{ .x = 100 };
    printX(XValue, x);
    // const y = YValue{.y = 100};
    // printX(YValue, y);
}
