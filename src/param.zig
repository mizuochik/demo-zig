const debug = @import("std").debug;

pub fn Vec(
    comptime T: type,
) type {
    return struct {
        const Self = @This();

        data: []T,

        fn init(data: []T) Self {
            return Self{ .data = data };
        }
    };
}

pub fn main() void {
    var ary = [_]i32{0, 1, 2, 3};
    const x = Vec(i32).init(ary[0..1]);
    debug.print("{}", .{x});
}
