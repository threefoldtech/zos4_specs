
module zos

pub struct Result{
pub mut:
	vdc					  VDCRef
	resultcode  u8 //0 means no error
	output string //if any information is being returned
	error string //if there is information about an error
	params string //structural information in params format 'color:red priority:critical'
}