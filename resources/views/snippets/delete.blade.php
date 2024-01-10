<div class="modal fade" id="formDeleteModal" tabindex="-1" aria-labelledby="formDeleteModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="formDeleteModalLabel">Delete vehicle - {{ $vehicle->vehicle_identification_number }}</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{ route('vehicles.update', ['id' => $vehicle->id]) }}" method="POST" id="formDeleteModalForm">
                @method('DELETE')
                <div class="modal-body">
                    <p>Are you sure you want to delete selected vehicle - {{ $vehicle->vehicle_identification_number }}</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Dismiss</button>
                    <button type="submit" class="btn btn-outline-danger" id="formDeleteModalFormSubmit">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>
