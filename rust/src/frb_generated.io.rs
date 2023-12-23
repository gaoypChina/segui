// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.3.

// Section: imports

use super::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: dart2rust

impl CstDecode<String> for *mut wire_cst_list_prim_u_8 {
    fn cst_decode(self) -> String {
        let vec: Vec<u8> = self.cst_decode();
        String::from_utf8(vec).unwrap()
    }
}
impl CstDecode<crate::api::handler::ContigServices> for *mut wire_cst_contig_services {
    fn cst_decode(self) -> crate::api::handler::ContigServices {
        let wrap = unsafe { flutter_rust_bridge::for_generated::box_from_leak_ptr(self) };
        CstDecode::<crate::api::handler::ContigServices>::cst_decode(*wrap).into()
    }
}
impl CstDecode<crate::api::handler::FastqServices> for *mut wire_cst_fastq_services {
    fn cst_decode(self) -> crate::api::handler::FastqServices {
        let wrap = unsafe { flutter_rust_bridge::for_generated::box_from_leak_ptr(self) };
        CstDecode::<crate::api::handler::FastqServices>::cst_decode(*wrap).into()
    }
}
impl CstDecode<crate::api::handler::SequenceServices> for *mut wire_cst_sequence_services {
    fn cst_decode(self) -> crate::api::handler::SequenceServices {
        let wrap = unsafe { flutter_rust_bridge::for_generated::box_from_leak_ptr(self) };
        CstDecode::<crate::api::handler::SequenceServices>::cst_decode(*wrap).into()
    }
}
impl CstDecode<crate::api::handler::ContigServices> for wire_cst_contig_services {
    fn cst_decode(self) -> crate::api::handler::ContigServices {
        crate::api::handler::ContigServices {
            dir_path: self.dir_path.cst_decode(),
            files: self.files.cst_decode(),
            file_fmt: self.file_fmt.cst_decode(),
            output_dir: self.output_dir.cst_decode(),
        }
    }
}
impl CstDecode<crate::api::handler::FastqServices> for wire_cst_fastq_services {
    fn cst_decode(self) -> crate::api::handler::FastqServices {
        crate::api::handler::FastqServices {
            dir_path: self.dir_path.cst_decode(),
            files: self.files.cst_decode(),
            file_fmt: self.file_fmt.cst_decode(),
            output_dir: self.output_dir.cst_decode(),
        }
    }
}
impl CstDecode<Vec<String>> for *mut wire_cst_list_String {
    fn cst_decode(self) -> Vec<String> {
        let vec = unsafe {
            let wrap = flutter_rust_bridge::for_generated::box_from_leak_ptr(self);
            flutter_rust_bridge::for_generated::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(CstDecode::cst_decode).collect()
    }
}
impl CstDecode<Vec<u8>> for *mut wire_cst_list_prim_u_8 {
    fn cst_decode(self) -> Vec<u8> {
        unsafe {
            let wrap = flutter_rust_bridge::for_generated::box_from_leak_ptr(self);
            flutter_rust_bridge::for_generated::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}
impl CstDecode<crate::api::handler::SequenceServices> for wire_cst_sequence_services {
    fn cst_decode(self) -> crate::api::handler::SequenceServices {
        crate::api::handler::SequenceServices {
            dir_path: self.dir_path.cst_decode(),
            files: self.files.cst_decode(),
            file_fmt: self.file_fmt.cst_decode(),
            datatype: self.datatype.cst_decode(),
            output_dir: self.output_dir.cst_decode(),
        }
    }
}
pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}
impl NewWithNullPtr for wire_cst_contig_services {
    fn new_with_null_ptr() -> Self {
        Self {
            dir_path: core::ptr::null_mut(),
            files: core::ptr::null_mut(),
            file_fmt: core::ptr::null_mut(),
            output_dir: core::ptr::null_mut(),
        }
    }
}
impl Default for wire_cst_contig_services {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}
impl NewWithNullPtr for wire_cst_fastq_services {
    fn new_with_null_ptr() -> Self {
        Self {
            dir_path: core::ptr::null_mut(),
            files: core::ptr::null_mut(),
            file_fmt: core::ptr::null_mut(),
            output_dir: core::ptr::null_mut(),
        }
    }
}
impl Default for wire_cst_fastq_services {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}
impl NewWithNullPtr for wire_cst_sequence_services {
    fn new_with_null_ptr() -> Self {
        Self {
            dir_path: core::ptr::null_mut(),
            files: core::ptr::null_mut(),
            file_fmt: core::ptr::null_mut(),
            datatype: core::ptr::null_mut(),
            output_dir: core::ptr::null_mut(),
        }
    }
}
impl Default for wire_cst_sequence_services {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

#[no_mangle]
pub extern "C" fn dart_fn_deliver_output(
    call_id: i32,
    ptr_: *mut u8,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    let message = unsafe {
        flutter_rust_bridge::for_generated::Dart2RustMessageSse::from_wire(
            ptr_,
            rust_vec_len_,
            data_len_,
        )
    };
    FLUTTER_RUST_BRIDGE_HANDLER.dart_fn_handle_output(call_id, message)
}

#[no_mangle]
pub extern "C" fn wire_ContigServices_new(port_: i64) {
    wire_ContigServices_new_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_ContigServices_summarize(port_: i64, that: *mut wire_cst_contig_services) {
    wire_ContigServices_summarize_impl(port_, that)
}

#[no_mangle]
pub extern "C" fn wire_FastqServices_new(port_: i64) {
    wire_FastqServices_new_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_FastqServices_summarize(
    port_: i64,
    that: *mut wire_cst_fastq_services,
    mode: *mut wire_cst_list_prim_u_8,
) {
    wire_FastqServices_summarize_impl(port_, that, mode)
}

#[no_mangle]
pub extern "C" fn wire_SequenceServices_concat_alignment(
    port_: i64,
    that: *mut wire_cst_sequence_services,
    out_fname: *mut wire_cst_list_prim_u_8,
    out_fmt_str: *mut wire_cst_list_prim_u_8,
    partition_fmt: *mut wire_cst_list_prim_u_8,
) {
    wire_SequenceServices_concat_alignment_impl(port_, that, out_fname, out_fmt_str, partition_fmt)
}

#[no_mangle]
pub extern "C" fn wire_SequenceServices_convert_sequence(
    port_: i64,
    that: *mut wire_cst_sequence_services,
    output_fmt: *mut wire_cst_list_prim_u_8,
    sort: bool,
) {
    wire_SequenceServices_convert_sequence_impl(port_, that, output_fmt, sort)
}

#[no_mangle]
pub extern "C" fn wire_SequenceServices_new(port_: i64) {
    wire_SequenceServices_new_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_SequenceServices_parse_sequence_id(
    port_: i64,
    that: *mut wire_cst_sequence_services,
    is_map: bool,
) {
    wire_SequenceServices_parse_sequence_id_impl(port_, that, is_map)
}

#[no_mangle]
pub extern "C" fn wire_SequenceServices_summarize_alignment(
    port_: i64,
    that: *mut wire_cst_sequence_services,
    output_prefix: *mut wire_cst_list_prim_u_8,
    interval: usize,
) {
    wire_SequenceServices_summarize_alignment_impl(port_, that, output_prefix, interval)
}

#[no_mangle]
pub extern "C" fn wire_SequenceServices_translate_sequence(
    port_: i64,
    that: *mut wire_cst_sequence_services,
    table: *mut wire_cst_list_prim_u_8,
    reading_frame: usize,
    output_fmt: *mut wire_cst_list_prim_u_8,
) {
    wire_SequenceServices_translate_sequence_impl(port_, that, table, reading_frame, output_fmt)
}

#[no_mangle]
pub extern "C" fn wire_init_logger(
    path: *mut wire_cst_list_prim_u_8,
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_init_logger_impl(path)
}

#[no_mangle]
pub extern "C" fn wire_show_dna_uppercase(
) -> flutter_rust_bridge::for_generated::WireSyncRust2DartDco {
    wire_show_dna_uppercase_impl()
}

#[no_mangle]
pub extern "C" fn cst_new_box_autoadd_contig_services() -> *mut wire_cst_contig_services {
    flutter_rust_bridge::for_generated::new_leak_box_ptr(
        wire_cst_contig_services::new_with_null_ptr(),
    )
}

#[no_mangle]
pub extern "C" fn cst_new_box_autoadd_fastq_services() -> *mut wire_cst_fastq_services {
    flutter_rust_bridge::for_generated::new_leak_box_ptr(
        wire_cst_fastq_services::new_with_null_ptr(),
    )
}

#[no_mangle]
pub extern "C" fn cst_new_box_autoadd_sequence_services() -> *mut wire_cst_sequence_services {
    flutter_rust_bridge::for_generated::new_leak_box_ptr(
        wire_cst_sequence_services::new_with_null_ptr(),
    )
}

#[no_mangle]
pub extern "C" fn cst_new_list_String(len: i32) -> *mut wire_cst_list_String {
    let wrap = wire_cst_list_String {
        ptr: flutter_rust_bridge::for_generated::new_leak_vec_ptr(
            <*mut wire_cst_list_prim_u_8>::new_with_null_ptr(),
            len,
        ),
        len,
    };
    flutter_rust_bridge::for_generated::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn cst_new_list_prim_u_8(len: i32) -> *mut wire_cst_list_prim_u_8 {
    let ans = wire_cst_list_prim_u_8 {
        ptr: flutter_rust_bridge::for_generated::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    flutter_rust_bridge::for_generated::new_leak_box_ptr(ans)
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_contig_services {
    dir_path: *mut wire_cst_list_prim_u_8,
    files: *mut wire_cst_list_String,
    file_fmt: *mut wire_cst_list_prim_u_8,
    output_dir: *mut wire_cst_list_prim_u_8,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_fastq_services {
    dir_path: *mut wire_cst_list_prim_u_8,
    files: *mut wire_cst_list_String,
    file_fmt: *mut wire_cst_list_prim_u_8,
    output_dir: *mut wire_cst_list_prim_u_8,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_list_String {
    ptr: *mut *mut wire_cst_list_prim_u_8,
    len: i32,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_list_prim_u_8 {
    ptr: *mut u8,
    len: i32,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_cst_sequence_services {
    dir_path: *mut wire_cst_list_prim_u_8,
    files: *mut wire_cst_list_String,
    file_fmt: *mut wire_cst_list_prim_u_8,
    datatype: *mut wire_cst_list_prim_u_8,
    output_dir: *mut wire_cst_list_prim_u_8,
}
