// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.14.

// Section: imports

use super::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::for_generated::wasm_bindgen;
use flutter_rust_bridge::for_generated::wasm_bindgen::prelude::*;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: dart2rust

impl<T> CstDecode<Option<T>> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
where
    JsValue: CstDecode<T>,
{
    fn cst_decode(self) -> Option<T> {
        (!self.is_null() && !self.is_undefined()).then(|| self.cst_decode())
    }
}
impl CstDecode<String> for String {
    fn cst_decode(self) -> String {
        self
    }
}
impl CstDecode<crate::api::sequence::AlignmentServices>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    fn cst_decode(self) -> crate::api::sequence::AlignmentServices {
        let self_ = self
            .dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap();
        assert_eq!(
            self_.length(),
            5,
            "Expected 5 elements, got {}",
            self_.length()
        );
        crate::api::sequence::AlignmentServices {
            dir: self_.get(0).cst_decode(),
            files: self_.get(1).cst_decode(),
            input_fmt: self_.get(2).cst_decode(),
            datatype: self_.get(3).cst_decode(),
            output_dir: self_.get(4).cst_decode(),
        }
    }
}
impl CstDecode<crate::api::contig::ContigServices>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    fn cst_decode(self) -> crate::api::contig::ContigServices {
        let self_ = self
            .dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap();
        assert_eq!(
            self_.length(),
            4,
            "Expected 4 elements, got {}",
            self_.length()
        );
        crate::api::contig::ContigServices {
            dir_path: self_.get(0).cst_decode(),
            files: self_.get(1).cst_decode(),
            file_fmt: self_.get(2).cst_decode(),
            output_dir: self_.get(3).cst_decode(),
        }
    }
}
impl CstDecode<crate::api::sequence::FilteringServices>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    fn cst_decode(self) -> crate::api::sequence::FilteringServices {
        let self_ = self
            .dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap();
        assert_eq!(
            self_.length(),
            6,
            "Expected 6 elements, got {}",
            self_.length()
        );
        crate::api::sequence::FilteringServices {
            dir: self_.get(0).cst_decode(),
            files: self_.get(1).cst_decode(),
            input_fmt: self_.get(2).cst_decode(),
            datatype: self_.get(3).cst_decode(),
            output_dir: self_.get(4).cst_decode(),
            is_concat: self_.get(5).cst_decode(),
        }
    }
}
impl CstDecode<Vec<String>> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> Vec<String> {
        self.dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap()
            .iter()
            .map(CstDecode::cst_decode)
            .collect()
    }
}
impl CstDecode<Vec<u8>> for Box<[u8]> {
    fn cst_decode(self) -> Vec<u8> {
        self.into_vec()
    }
}
impl CstDecode<Option<String>> for Option<String> {
    fn cst_decode(self) -> Option<String> {
        self.map(CstDecode::cst_decode)
    }
}
impl CstDecode<crate::api::sequence::PartitionServices>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    fn cst_decode(self) -> crate::api::sequence::PartitionServices {
        let self_ = self
            .dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap();
        assert_eq!(
            self_.length(),
            6,
            "Expected 6 elements, got {}",
            self_.length()
        );
        crate::api::sequence::PartitionServices {
            file_inputs: self_.get(0).cst_decode(),
            input_part_fmt: self_.get(1).cst_decode(),
            output: self_.get(2).cst_decode(),
            output_part_fmt: self_.get(3).cst_decode(),
            datatype: self_.get(4).cst_decode(),
            is_uncheck: self_.get(5).cst_decode(),
        }
    }
}
impl CstDecode<crate::api::reads::RawReadServices>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    fn cst_decode(self) -> crate::api::reads::RawReadServices {
        let self_ = self
            .dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap();
        assert_eq!(
            self_.length(),
            4,
            "Expected 4 elements, got {}",
            self_.length()
        );
        crate::api::reads::RawReadServices {
            dir_path: self_.get(0).cst_decode(),
            files: self_.get(1).cst_decode(),
            file_fmt: self_.get(2).cst_decode(),
            output_dir: self_.get(3).cst_decode(),
        }
    }
}
impl CstDecode<crate::api::sequence::SequenceServices>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    fn cst_decode(self) -> crate::api::sequence::SequenceServices {
        let self_ = self
            .dyn_into::<flutter_rust_bridge::for_generated::js_sys::Array>()
            .unwrap();
        assert_eq!(
            self_.length(),
            5,
            "Expected 5 elements, got {}",
            self_.length()
        );
        crate::api::sequence::SequenceServices {
            dir: self_.get(0).cst_decode(),
            files: self_.get(1).cst_decode(),
            input_fmt: self_.get(2).cst_decode(),
            datatype: self_.get(3).cst_decode(),
            output_dir: self_.get(4).cst_decode(),
        }
    }
}
impl CstDecode<String> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> String {
        self.as_string().expect("non-UTF-8 string, or not a string")
    }
}
impl CstDecode<bool> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> bool {
        self.is_truthy()
    }
}
impl CstDecode<f64> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> f64 {
        self.unchecked_into_f64() as _
    }
}
impl CstDecode<Vec<u8>> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> Vec<u8> {
        self.unchecked_into::<flutter_rust_bridge::for_generated::js_sys::Uint8Array>()
            .to_vec()
            .into()
    }
}
impl CstDecode<u8> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> u8 {
        self.unchecked_into_f64() as _
    }
}
impl CstDecode<usize> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> usize {
        self.unchecked_into_f64() as _
    }
}

#[wasm_bindgen]
pub fn dart_fn_deliver_output(
    call_id: i32,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
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

#[wasm_bindgen]
pub fn wire_ContigServices_new(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire_ContigServices_new_impl(port_)
}

#[wasm_bindgen]
pub fn wire_ContigServices_summarize(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
) {
    wire_ContigServices_summarize_impl(port_, that)
}

#[wasm_bindgen]
pub fn wire_RawReadServices_new(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire_RawReadServices_new_impl(port_)
}

#[wasm_bindgen]
pub fn wire_RawReadServices_summarize(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    mode: String,
) {
    wire_RawReadServices_summarize_impl(port_, that, mode)
}

#[wasm_bindgen]
pub fn wire_AlignmentServices_concat_alignment(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    out_fname: String,
    out_fmt_str: String,
    partition_fmt: String,
) {
    wire_AlignmentServices_concat_alignment_impl(port_, that, out_fname, out_fmt_str, partition_fmt)
}

#[wasm_bindgen]
pub fn wire_AlignmentServices_new(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire_AlignmentServices_new_impl(port_)
}

#[wasm_bindgen]
pub fn wire_AlignmentServices_summarize_alignment(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    output_prefix: String,
    interval: usize,
) {
    wire_AlignmentServices_summarize_alignment_impl(port_, that, output_prefix, interval)
}

#[wasm_bindgen]
pub fn wire_FilteringServices_filter_minimal_length(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    length: usize,
) {
    wire_FilteringServices_filter_minimal_length_impl(port_, that, length)
}

#[wasm_bindgen]
pub fn wire_FilteringServices_filter_minimal_taxa(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    percent: f64,
    taxon_count: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
) {
    wire_FilteringServices_filter_minimal_taxa_impl(port_, that, percent, taxon_count)
}

#[wasm_bindgen]
pub fn wire_FilteringServices_filter_parsimony_inf_count(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    count: usize,
) {
    wire_FilteringServices_filter_parsimony_inf_count_impl(port_, that, count)
}

#[wasm_bindgen]
pub fn wire_FilteringServices_filter_percent_informative(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    percent: f64,
) {
    wire_FilteringServices_filter_percent_informative_impl(port_, that, percent)
}

#[wasm_bindgen]
pub fn wire_FilteringServices_new(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire_FilteringServices_new_impl(port_)
}

#[wasm_bindgen]
pub fn wire_PartitionServices_convert_partition(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
) {
    wire_PartitionServices_convert_partition_impl(port_, that)
}

#[wasm_bindgen]
pub fn wire_PartitionServices_new(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire_PartitionServices_new_impl(port_)
}

#[wasm_bindgen]
pub fn wire_SequenceServices_convert_sequence(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    output_fmt: String,
    sort: bool,
) {
    wire_SequenceServices_convert_sequence_impl(port_, that, output_fmt, sort)
}

#[wasm_bindgen]
pub fn wire_SequenceServices_new(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire_SequenceServices_new_impl(port_)
}

#[wasm_bindgen]
pub fn wire_SequenceServices_parse_sequence_id(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    is_map: bool,
) {
    wire_SequenceServices_parse_sequence_id_impl(port_, that, is_map)
}

#[wasm_bindgen]
pub fn wire_SequenceServices_translate_sequence(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    that: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
    table: String,
    reading_frame: usize,
    output_fmt: String,
) {
    wire_SequenceServices_translate_sequence_impl(port_, that, table, reading_frame, output_fmt)
}

#[wasm_bindgen]
pub fn wire_show_dna_uppercase(port_: flutter_rust_bridge::for_generated::MessagePort) {
    wire_show_dna_uppercase_impl(port_)
}
