<div class="modal fade" id="formEditModal" tabindex="-1" aria-labelledby="formEditModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="formEditModalLabel">Edit vehicle - {{ $vehicle->vehicle_identification_number }}</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{ route('vehicles.update', ['id' => $vehicle->id]) }}" method="POST" id="formEditModalForm">
                @method('PUT')
                <div class="modal-body">

                    <div class="input-group mb-3">
                        <label class="input-group-text" for="brands">Vehicle brands</label>
                        <select class="form-select" id="brands" name="brand_id">
                            @foreach($data->brands as $id => $brand)
                                <option value="{{ $id }}" {{ ($id == $vehicle->brand_id) ? 'selected' : '' }}>{{ $brand }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="input-group mb-3">
                        <label class="input-group-text" for="colors">Vehicle color</label>
                        <select class="form-select" id="colors" name="color_id">
                            @foreach($data->colors as $id => $color)
                                <option value="{{ $id }}" {{ ($id == $vehicle->color_id) ? 'selected' : '' }}>{{ $color }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="input-group mb-3">
                        <label class="input-group-text" for="types">Vehicle type</label>
                        <select class="form-select" id="types" name="type_id">
                            @foreach($data->types as $id => $type)
                                <option value="{{ $id }}" {{ ($id == $vehicle->type_id) ? 'selected' : '' }}>{{ $type }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="input-group flex-nowrap mb-3">
                        <span class="input-group-text" id="addon-wrapping">Manufacture date</span>
                        <input type="text" name="manufacture_date" class="form-control datepicker" value="{{ date('d.m.Y', strtotime($vehicle->manufacture_date)) }}" data-provide="datepicker" data-date-format="dd.mm.yyyy" placeholder="dd.mm.YYYY" aria-label="Manufacture date" aria-describedby="addon-wrapping">
                    </div>

                    <div class="input-group flex-nowrap mb-3">
                        <span class="input-group-text" id="addon-wrapping">Vehicle identification number</span>
                        <input type="text" name="vehicle_identification_number" class="form-control" value="{{ $vehicle->vehicle_identification_number }}" placeholder="1XYZ2345AB6789CED" aria-label="Vehicle identification number" aria-describedby="addon-wrapping">
                    </div>

                    <div class="input-group mb-3">
                        <label class="input-group-text" for="owners">Vehicle owner</label>
                        <select class="form-select" id="owners" name="owner_id">
                            @foreach($data->owners as $id => $owner)
                                <option value="{{ $id }}" {{ ($id == $vehicle->owner_id) ? 'selected' : '' }}>{{ $owner }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="input-group flex-nowrap mb-3">
                        <span class="input-group-text" id="addon-wrapping">Registration</span>
                        <input type="text" name="registration" class="form-control" value="{{ $vehicle->registration }}" placeholder="XYZ123" aria-label="Registration" aria-describedby="addon-wrapping">
                    </div>

                    <div class="input-group flex-nowrap mb-3">
                        <span class="input-group-text" id="addon-wrapping">Registration date</span>
                        <input type="text" name="registration_date" class="form-control datepicker" value="{{ date('d.m.Y', strtotime($vehicle->registration_date)) }}" data-provide="datepicker" data-date-format="dd.mm.yyyy" placeholder="dd.mm.YYYY" aria-label="Registration date" aria-describedby="addon-wrapping">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success" id="formEditModalFormSubmit">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>
