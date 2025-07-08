import { useQuery } from "@tanstack/react-query";
import { Link } from "react-router-dom";

type GetRoomsAPIReponse = Array<{ id: string; name: string }>;

export function CreateRoom() {
  const { data, isLoading } = useQuery({
    queryKey: ["get-rooms"],
    queryFn: async () => {
      const response = await fetch("http://localhost:3333/rooms");
      const result: GetRoomsAPIReponse = await response.json();
      return result;
    },
  });

  return (
    <div>
      <div>Create Room</div>

      {isLoading && <div>Carregando...</div>}
      <div className="flex flex-col gap-1">
        {data?.map((room) => {
          return (
            <Link className="underline" key={room.id} to={`/room/${room.id}`}>
              {room.name}
            </Link>
          );
        })}
      </div>
    </div>
  );
}
