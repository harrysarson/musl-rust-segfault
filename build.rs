use std::path::Path;

fn main() {
    let dir = Path::new("src");

    cc::Build::new()
        .cpp(true)
        .include(&dir)
        .file(dir.join("test.cc"))
        .compile("test");
}
