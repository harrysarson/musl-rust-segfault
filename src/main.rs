use core::ffi::c_void;

extern "C" {
    #[link_name = "test"]
    fn test() -> *const c_void;
}

fn main() {
    println!("{:?}", unsafe {test()});
}
