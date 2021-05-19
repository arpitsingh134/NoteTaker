

<!-- Modal -->
<%@page import="com.entities.Note"%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Note</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="UpdateNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Title</label> <input type="text"
					class="form-control" name="title"  placeholder="Enter title" value="">
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea class="form-control" rows="2" cols="3"
					style="height: 300px;" name="content"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-outline-primary">Save Changes</button>
			</div>
		</form>
      
      
      
        
      </div>

    </div>
  </div>
</div>