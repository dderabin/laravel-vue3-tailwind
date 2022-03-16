<div>
    <div class="md:grid md:grid-cols-3 md:gap-6">
    <div class="md:col-span-1">
        <div class="px-4 sm:px-0">
        <h3 class="text-lg font-medium leading-6 text-gray-900">Signatures</h3>
        <p class="mt-1 mb-6 text-sm text-gray-600">
            To be signed by TCL and customer/driver.
        </p>
        @if(isset($terms_condition))
        <a id="terms_conditions_confirm" class="text-sm text-blue-500 cursor-pointer hover:text-blue-700">
            Accept our Terms & Conditions before Signature<span class="text-gray-600"> to click here</span>
        </a>        
        @endif
        </div>
    </div>
    <div class="mt-5 md:mt-0 md:col-span-2">
        <div class="shadow sm:rounded-md sm:overflow-hidden">

            <div class="px-4 py-5 space-y-6 bg-white sm:p-6">
                <div class="grid grid-cols-6 gap-6 pb-6">
                    {{-- Column 1 50% --}}                    
                    <div class="col-span-6 sm:col-span-3">
                        <div class="">
                            <label for="tcl_name" class="block text-sm font-medium text-gray-700">Name</label>
                            <x-inputs.text
                                name="tcl_name"
                                value="{{ old('tcl_name', ($editing ? $data->tcl_name : Auth::user()->name )) }}"
                                maxlength="255"
                                class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md py-2 {{ isset($signing) ? 'bg-gray-200 md:bg-gray-200' : ''}}"
                                readonly                                
                            ></x-inputs.text>
                        </div>
                        <div class="mt-6">
                            <label for="tcl_position" class="block text-sm font-medium text-gray-700">Position</label>
                            <x-inputs.text
                                name="tcl_position"
                                value="{{ old('tcl_position', ($editing ? $data->tcl_position : Auth::user()->jobtitle)) }}"
                                maxlength="255"
                                class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md py-2 {{ isset($signing) ? 'bg-gray-200 md:bg-gray-200' : ''}}"
                                readonly
                            ></x-inputs.text>
                        </div>
                        <div class="mt-6">
                            <label for="tcl_behalf" class="block text-sm font-medium text-gray-700">For &amp; on behalf of</label>
                            <x-inputs.text
                                name="tcl_behalf"
                                value="{{ old('tcl_behalf', ($editing ? $data->tcl_behalf ?  $data->tcl_behalf : 'Denis Project' : 'Denis Project')) }}"
                                maxlength="255"
                                class="mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md py-2 {{ isset($signing) ? 'bg-gray-200 md:bg-gray-200' : ''}}"
                                readonly
                            ></x-inputs.text>
                        </div>
                        <div class="mt-6">
                            <label for="about" class="block text-sm font-medium text-gray-700">
                                Signature
                            </label>
                            <div class="mt-1 border border-gray-200">
                                @if(!isset($signing))
                                    <a 
                                        id = "tcl_signature"
                                        class="{{ isset($contract_editable) && $contract_editable ? 'disabled-link' : ''}} {{ isset($checklist_editable) && $checklist_editable ? 'disabled-link' : ''}}"
                                    >
                                        <img id="tcl_signature-image" class="mx-auto"
                                            src="{{old('tcl_signature', $editing ? ($data->tcl_signature && str_contains($data->tcl_signature, '/')) ? asset($data->tcl_signature) : '/img/sign.png' : '/img/sign.png')}}" alt="tcl_signature-image">
                                    </a>
                                @else
                                <img id="tcl_signature-image" class="mx-auto"
                                            src="{{old('tcl_signature', $editing ? ($data->tcl_signature && str_contains($data->tcl_signature, '/')) ? asset($data->tcl_signature) : '/img/sign.png' : '/img/sign.png')}}" alt="tcl_signature-image">
                                 
                                @endif
                              <input id = "tcl_signature-image-form" name = 'tcl_signature' hidden
                                value = "{{old('tcl_signature', $editing ? $data->tcl_signature : '/img/sign.png')}}"/>
                            </div>
                        </div>
                        <div class="mt-6">
                            <label for="tcl_sign_date" class="block text-sm font-medium text-gray-700">Date</label>                            
                            <input
                                type="date"
                                name="tcl_sign_date"
                                id="tcl_sign_date"
                                value="{{ old('tcl_sign_date', ($editing ? optional($data->tcl_sign_date)->format('Y-m-d') : '' )) }}"
                                max="255"   
                                class="block w-full py-2 mt-1 border-gray-300 rounded-md shadow-sm form-date focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                                {{ isset($contract_editable) && $contract_editable? 'disabled' : ''}}
                                {{ isset($checklist_editable) && $checklist_editable? 'disabled' : ''}} 
                                {{ isset($signing) ? 'disabled' : ''}}                                
                            ></input>                            
                        </div>
                    </div>
                    {{-- Column 2 50%--}}
                    <div class="col-span-6 sm:col-span-3">
                        <div class="">
                            <label for="hirer_name" class="block text-sm font-medium text-gray-700">Name</label>
                            <input
                                name="hirer_name"
                                id="hirer_name"
                                type="text"
                                value="{{ old('hirer_name', ($editing ? $data->hirer_name : '')) }}"
                                maxlength="255"
                                class="block w-full py-2 mt-1 border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"                                
                                {{ isset($terms_condition) ? 'disabled' :  '' }}  
                                {{ isset($contract_editable) && $contract_editable? 'disabled' : ''}}
                                {{ isset($checklist_editable) && $checklist_editable? 'disabled' : ''}}                                  
                                {{ isset($contract_required) ? 'required' :  '' }}                                                           
                                ></input>
                        </div>
                        <div class="mt-6">
                            <label for="hirer_position" class="block text-sm font-medium text-gray-700">Position</label>
                            <input
                                name="hirer_position"
                                id="hirer_position"
                                type="text"
                                value="{{ old('hirer_position', ($editing ? $data->hirer_position : '')) }}"
                                class="block w-full py-2 mt-1 border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                                maxlength="255"
                                {{ isset($terms_condition) ? 'disabled' :  '' }}
                                {{ isset($contract_editable) && $contract_editable? 'disabled' : ''}}
                                {{ isset($checklist_editable) && $checklist_editable? 'disabled' : ''}}                                   
                                {{ isset($contract_required) ? 'required' :  '' }}                          
                            ></input>
                        </div>
                        <div class="mt-6">
                            <label for="hirer_behalf" class="block text-sm font-medium text-gray-700">For &amp; on behalf of (customer)</label>
                            <input
                                name="hirer_behalf"
                                id="hirer_behalf"
                                type="text"
                                value="{{ old('hirer_behalf', ($editing ? $data->hirer_behalf : '')) }}"
                                class="block w-full py-2 mt-1 border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                                maxlength="255"
                                {{ isset($terms_condition) ? 'disabled' :  '' }}
                                {{ isset($contract_editable) && $contract_editable? 'disabled' : ''}}
                                {{ isset($checklist_editable) && $checklist_editable? 'disabled' : ''}}                                 
                                {{ isset($contract_required) ? 'required' :  '' }}
                            ></input>
                        </div>
                        <div class="mt-6" readonly>
                            <label for="about" class="block text-sm font-medium text-gray-700">
                                Signature
                            </label>
                            <div class="mt-1 border border-gray-200" readonly>
                                <div id="hirer_signature_div">
                                    @if(!isset($terms_condition))
                                        @if(!isset($contract_editable))
                                        <a 
                                            id = "hirer_signature"
                                            class="{{ isset($contract_editable) && $contract_editable ? 'disabled-link' : ''}} {{ isset($checklist_editable) && $checklist_editable ? 'disabled-link' : ''}}"
                                        >
                                            <img id="hirer_signature-image" class="mx-auto"
                                            src="{{old('hirer_signature', $editing ? ($data->hirer_signature && str_contains($data->hirer_signature, '/')) ? asset($data->hirer_signature) : '/img/sign.png' : '/img/sign.png')}}" alt="hirer_signature-image">
                                        </a>
                                        @else
                                            @if($contract_editable)
                                            <img id="hirer_signature-image" class="mx-auto"
                                                src="{{old('hirer_signature', $editing ? ($data->hirer_signature && str_contains($data->hirer_signature, '/')) ? asset($data->hirer_signature) : '/img/sign.png' : '/img/sign.png')}}" alt="hirer_signature-image">
                                            @else
                                            <a 
                                                id = "hirer_signature"
                                                class="{{ isset($contract_editable) && $contract_editable ? 'disabled-link' : ''}} {{ isset($checklist_editable) && $checklist_editable ? 'disabled-link' : ''}}"
                                            >
                                            <img id="hirer_signature-image" class="mx-auto"
                                                src="{{old('hirer_signature', $editing ? ($data->hirer_signature && str_contains($data->hirer_signature, '/')) ? asset($data->hirer_signature) : '/img/sign.png' : '/img/sign.png')}}" alt="hirer_signature-image">
                                            </a>
                                            @endif
                                        @endif
                                    @else
                                    <img id="hirer_signature-image" class="mx-auto"
                                        src="{{old('hirer_signature', $editing ? ($data->hirer_signature && str_contains($data->hirer_signature, '/')) ? asset($data->hirer_signature) : '/img/sign.png' : '/img/sign.png')}}" alt="hirer_signature-image">
                                    @endif
                                </div>
                              <input 
                                id = "hirer_signature-image-form" 
                                name = 'hirer_signature' 
                                hidden
                                value = "{{old('hirer_signature', $editing ? $data->hirer_signature : '/img/sign.png')}}" 
                                readonly                                
                                />                                
                            </div>
                        </div>
                        <div class="mt-6">
                            <label for="hirer_sign_date" class="block text-sm font-medium text-gray-700">Date</label>
                            <input
                                name="hirer_sign_date"
                                id="hirer_sign_date"
                                type="date"
                                value="{{ old('hirer_sign_date', ($editing ? optional($data->hirer_sign_date)->format('Y-m-d') : '')) }}"
                                max="255"
                                class="block w-full py-2 mt-1 border-gray-300 rounded-md shadow-sm form-date focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                                {{ isset($terms_condition) ? 'disabled' :  '' }}
                                {{ isset($contract_editable) && $contract_editable? 'disabled' : ''}}
                                {{ isset($checklist_editable) && $checklist_editable? 'disabled' : ''}}                                
                            ></input>
                        </div>
                    </div>

                    <div class="col-sapn-6 sm:col-span-6 supervisor-sign-container" style="display:none">
                        <div class="mt-6">
                            <label for="about" class="block text-sm font-medium text-gray-700">
                                Supervisor Signature
                            </label>
                            <div class="mt-1 border border-gray-200">
                                <a id = "supervisor_signature">
                                    <img id="supervisor_signature-image" class="mx-auto"
                                        src="/img/supervisor_sign.png" alt="supervisor_signature-image">
                                </a>
                               
                                <input id = "supervisor_signature-image-form" name = 'supervisor_signature' hidden
                                value = "{{$data ? $data->supervisor_signature : '/img/supervisor_sign.png'}}"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>